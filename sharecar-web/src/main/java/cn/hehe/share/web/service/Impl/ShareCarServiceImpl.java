package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.dto.CarDetailsDTO;
import cn.hehe.share.api.dto.CarListDTO;
import cn.hehe.share.api.dto.PortalCarListDTO;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.PortalCarListVO;
import cn.hehe.share.web.dao.ShareCarDao;
import cn.hehe.share.web.dao.ShareCustomerDao;
import cn.hehe.share.web.entity.ShareCar;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.service.ShareCarService;
import cn.hehe.share.web.service.ShareCustomerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
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

    @Override
    public  List<PortalCarListDTO> portalCarList(PortalCarListVO portalCarListVO) {
        String seatsStr = portalCarListVO.getSeats();
        Integer seats = null;
        if(!StringUtils.isEmpty(seatsStr)){
            Integer.valueOf(seatsStr.substring(0,1));
        }

        String cashPledge = portalCarListVO.getCashPledge();
        BigDecimal cashPledgeMin = null;
        BigDecimal cashPledgeMax = null;
        if(!StringUtils.isEmpty(cashPledge)){
            String[] split = cashPledge.split("-");
            cashPledgeMin = new BigDecimal(split[0]);
            cashPledgeMax = new BigDecimal(split[1]);
        }

        PageHelper.startPage(portalCarListVO.getPageNum(),portalCarListVO.getPageSize());
        List<ShareCar> shareCarList = shareCarDao.portalCarList(portalCarListVO,seats,cashPledgeMin,cashPledgeMax);
        List<PortalCarListDTO> portalCarListDTOList = new ArrayList<>();
        if(!CollectionUtils.isEmpty(shareCarList)){
            for (ShareCar shareCar : shareCarList) {
                PortalCarListDTO portalCarListDTO = new PortalCarListDTO();
                portalCarListDTO.setCarName(shareCar.getName());
                portalCarListDTO.setRegion(shareCar.getRegion());
                portalCarListDTO.setFuelType(shareCar.getFuelType());
                portalCarListDTO.setSeats(shareCar.getSeats());
                portalCarListDTO.setCashPledge(shareCar.getCashPledge());
                String imageInfo = shareCar.getImageInfo();
                if(!StringUtils.isEmpty(imageInfo)){
                    String[] split1 = imageInfo.split(",");
                    portalCarListDTO.setImage(split1[0]);
                }
                portalCarListDTOList.add(portalCarListDTO);
            }
        }
        return portalCarListDTOList;
    }
}