package cn.hehe.share.web.dao;

import cn.hehe.share.api.dto.OrderDetailsDTO;
import cn.hehe.share.web.entity.ShareOrder;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 共享管理订单表(ShareOrder)表数据库访问层
 *
 * @author makejava
 * @since 2020-11-26 14:04:48
 */
public interface ShareOrderDao {

    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    ShareOrder queryById(Integer orderId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareOrder> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareOrder 实例对象
     * @return 对象列表
     */
    List<ShareOrder> queryAll(ShareOrder shareOrder);

    /**
     * 新增数据
     *
     * @param shareOrder 实例对象
     * @return 影响行数
     */
    int insert(ShareOrder shareOrder);

    /**
     * 修改数据
     *
     * @param shareOrder 实例对象
     * @return 影响行数
     */
    int update(ShareOrder shareOrder);

    /**
     * 通过主键删除数据
     *
     * @param orderId 主键
     * @return 影响行数
     */
    int deleteById(Integer orderId);

    OrderDetailsDTO orderDetails(@Param("orderId") Integer orderId);
}