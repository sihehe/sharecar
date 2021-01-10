package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.dto.CarDetailsDTO;
import cn.hehe.share.api.dto.CarListDTO;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.web.dao.ShareCarDao;
import cn.hehe.share.web.dao.ShareCustomerDao;
import cn.hehe.share.web.entity.ShareCar;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.service.ShareCarService;
import cn.hehe.share.web.service.ShareCustomerService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

/**
 * (ShareCar)表服务实现类
 *
 * @author makejava
 * @since 2020-11-11 18:36:07
 */
@Service("shareCarService")
public class ShareCarServiceImpl implements ShareCarService {
    @Resource
    private ShareCarDao shareCarDao;
    @Resource
    private ShareCustomerDao shareCustomerDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public ShareCar queryById(Integer id) {
        return this.shareCarDao.queryById(id);
    }


    /**
     * 新增数据
     *
     * @param shareCar 实例对象
     * @return 实例对象
     */
    @Override
    public ShareCar insert(ShareCar shareCar) {
        this.shareCarDao.insert(shareCar);
        return shareCar;
    }

    /**
     * 修改数据
     *
     * @param shareCar 实例对象
     * @return 实例对象
     */
    @Override
    public ShareCar update(ShareCar shareCar) {
        this.shareCarDao.update(shareCar);
        return this.queryById(shareCar.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.shareCarDao.deleteById(id) > 0;
    }

    @Override
    public List<ShareCar> queryAll(ShareCar shareCar) {
        List<ShareCar> shareCars = shareCarDao.queryAll(shareCar);
        return shareCars;
    }

    @Override
    public List<String> styleList() {
        List<String> stringList = shareCarDao.styleList();
        return stringList;
    }

    @Override
    public List<CarListDTO> carList(ShareCar shareCar) {
        List<CarListDTO> carListDTOS =  shareCarDao.carList(shareCar);
        return carListDTOS;
    }

    @Override
    public Result<CarDetailsDTO> carDetails(Integer id) {
        if(Objects.isNull(id)){
            return ResultUtils.fail();
        }
        ShareCar shareCar = this.queryById(id);
        if(Objects.isNull(shareCar)){
            Result fail = ResultUtils.fail();
            fail.setMsg("查询不到数据");
            return fail;
        }
        CarDetailsDTO carDetailsDTO = new CarDetailsDTO();
        BeanUtils.copyProperties(shareCar,carDetailsDTO);
        Integer ownerId = shareCar.getOwnerId();
        ShareCustomer shareCustomer = shareCustomerDao.queryById(ownerId);
        String customerName = shareCustomer.getCustomerName();
        carDetailsDTO.setOwnerId(customerName);
        Result success = ResultUtils.success();
        success.setData(carDetailsDTO);
        return success;
    }
}