package cn.hehe.share.web.service;

import cn.hehe.share.api.dto.CarListDTO;
import cn.hehe.share.web.entity.ShareCar;
import java.util.List;

/**
 * (ShareCar)表服务接口
 *
 * @author makejava
 * @since 2020-11-11 18:36:07
 */
public interface ShareCarService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ShareCar queryById(Integer id);


    /**
     * 新增数据
     *
     * @param shareCar 实例对象
     * @return 实例对象
     */
    ShareCar insert(ShareCar shareCar);

    /**
     * 修改数据
     *
     * @param shareCar 实例对象
     * @return 实例对象
     */
    ShareCar update(ShareCar shareCar);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

    List<ShareCar> queryAll(ShareCar shareCar);

    /**
     * 查询所有的风格列表
     * @return
     */
    List<String> styleList();


    List<CarListDTO> carList(ShareCar shareCar);
}