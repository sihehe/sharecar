package cn.hehe.share.web.dao;

import cn.hehe.share.web.entity.ShareType;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (ShareType)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-30 13:32:37
 */
public interface ShareTypeDao {

    /**
     * 通过ID查询单条数据
     *
     * @param typeId 主键
     * @return 实例对象
     */
    ShareType queryById(Integer typeId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareType> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareType 实例对象
     * @return 对象列表
     */
    List<ShareType> queryAll(ShareType shareType);

    /**
     * 新增数据
     *
     * @param shareType 实例对象
     * @return 影响行数
     */
    int insert(ShareType shareType);

    /**
     * 修改数据
     *
     * @param shareType 实例对象
     * @return 影响行数
     */
    int update(ShareType shareType);

    /**
     * 通过主键删除数据
     *
     * @param typeId 主键
     * @return 影响行数
     */
    int deleteById(Integer typeId);

}