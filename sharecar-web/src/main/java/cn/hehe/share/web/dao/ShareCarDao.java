package cn.hehe.share.web.dao;

import cn.hehe.share.api.dto.CarListDTO;
import cn.hehe.share.web.entity.ShareCar;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (ShareCar)表数据库访问层
 *
 * @author makejava
 * @since 2020-11-11 18:36:05
 */
@Mapper
public interface ShareCarDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ShareCar queryById(Integer id);



    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareCar 实例对象
     * @return 对象列表
     */
    List<ShareCar> queryAll(ShareCar shareCar);

    /**
     * 新增数据
     *
     * @param shareCar 实例对象
     * @return 影响行数
     */
    int insert(ShareCar shareCar);

    /**
     * 修改数据
     *
     * @param shareCar 实例对象
     * @return 影响行数
     */
    int update(ShareCar shareCar);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    /**
     * 查询风格列表
     * @return
     */
    List<String> styleList();


    List<CarListDTO> carList(ShareCar shareCar);
}