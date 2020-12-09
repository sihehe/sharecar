package cn.hehe.share.web.dao;

import cn.hehe.share.api.dto.BusinessListDto;
import cn.hehe.share.web.entity.SahreBusiness;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (SahreBusiness)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
public interface SahreBusinessDao {

    /**
     * 通过ID查询单条数据
     *
     * @param businessId 主键
     * @return 实例对象
     */
    SahreBusiness queryById(Integer businessId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<SahreBusiness> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param sahreBusiness 实例对象
     * @return 对象列表
     */
    List<SahreBusiness> queryAll(SahreBusiness sahreBusiness);

    /**
     * 新增数据
     *
     * @param sahreBusiness 实例对象
     * @return 影响行数
     */
    int insert(SahreBusiness sahreBusiness);

    /**
     * 修改数据
     *
     * @param sahreBusiness 实例对象
     * @return 影响行数
     */
    int update(SahreBusiness sahreBusiness);

    /**
     * 通过主键删除数据
     *
     * @param businessId 主键
     * @return 影响行数
     */
    int deleteById(Integer businessId);

    List<BusinessListDto> businessList(@Param("name") String name, @Param("type")  String type);
}