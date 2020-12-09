package cn.hehe.share.web.dao;

import cn.hehe.share.web.entity.ShareBusinessDetail;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (ShareBusinessDetail)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
public interface ShareBusinessDetailDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ShareBusinessDetail queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareBusinessDetail> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareBusinessDetail 实例对象
     * @return 对象列表
     */
    List<ShareBusinessDetail> queryAll(ShareBusinessDetail shareBusinessDetail);

    /**
     * 新增数据
     *
     * @param shareBusinessDetail 实例对象
     * @return 影响行数
     */
    int insert(ShareBusinessDetail shareBusinessDetail);

    /**
     * 修改数据
     *
     * @param shareBusinessDetail 实例对象
     * @return 影响行数
     */
    int update(ShareBusinessDetail shareBusinessDetail);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

    void updateByBusinessId (@Param("businessId") Integer businessId,@Param("isDel") String isDel);
}