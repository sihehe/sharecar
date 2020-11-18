package cn.hehe.sharecar.service;

import cn.hehe.sharecar.entity.ShareCar;
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
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareCar> queryAllByLimit(int offset, int limit);

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


}