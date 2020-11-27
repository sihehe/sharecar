package cn.hehe.share.web.dao;

import cn.hehe.share.web.entity.ShareCustomer;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (ShareCustomer)表数据库访问层
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */
public interface ShareCustomerDao {

    /**
     * 通过ID查询单条数据
     *
     * @param customerId 主键
     * @return 实例对象
     */
    ShareCustomer queryById(Integer customerId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareCustomer> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareCustomer 实例对象
     * @return 对象列表
     */
    List<ShareCustomer> queryAll(ShareCustomer shareCustomer);

    /**
     * 新增数据
     *
     * @param shareCustomer 实例对象
     * @return 影响行数
     */
    int insert(ShareCustomer shareCustomer);

    /**
     * 修改数据
     *
     * @param shareCustomer 实例对象
     * @return 影响行数
     */
    int update(ShareCustomer shareCustomer);

    /**
     * 通过主键删除数据
     *
     * @param customerId 主键
     * @return 影响行数
     */
    int deleteById(Integer customerId);

}