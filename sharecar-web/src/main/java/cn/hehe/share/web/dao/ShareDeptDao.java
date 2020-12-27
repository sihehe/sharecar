package cn.hehe.share.web.dao;

import cn.hehe.share.web.entity.ShareDept;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (ShareDept)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-27 17:03:14
 */
public interface ShareDeptDao {

    /**
     * 通过ID查询单条数据
     *
     * @param deptId 主键
     * @return 实例对象
     */
    ShareDept queryById(Integer deptId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareDept> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareDept 实例对象
     * @return 对象列表
     */
    List<ShareDept> queryAll(ShareDept shareDept);

    /**
     * 新增数据
     *
     * @param shareDept 实例对象
     * @return 影响行数
     */
    int insert(ShareDept shareDept);

    /**
     * 修改数据
     *
     * @param shareDept 实例对象
     * @return 影响行数
     */
    int update(ShareDept shareDept);

    /**
     * 通过主键删除数据
     *
     * @param deptId 主键
     * @return 影响行数
     */
    int deleteById(Integer deptId);

}