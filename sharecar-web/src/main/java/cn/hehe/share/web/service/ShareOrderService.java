package cn.hehe.share.web.service;

import cn.hehe.share.api.dto.OrderDetailsDTO;
import cn.hehe.share.api.dto.OrderListDTO;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.vo.ProtalAddOrderVO;
import cn.hehe.share.web.entity.ShareOrder;
import java.util.List;

/**
 * 共享管理订单表(ShareOrder)表服务接口
 *
 * @author makejava
 * @since 2020-11-26 14:04:48
 */
public interface ShareOrderService {

    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    ShareOrder queryById(Integer orderId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareOrder> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param shareOrder 实例对象
     * @return 实例对象
     */
    ShareOrder insert(ShareOrder shareOrder);

    /**
     * 修改数据
     *
     * @param shareOrder 实例对象
     * @return 实例对象
     */
    ShareOrder update(ShareOrder shareOrder);

    /**
     * 通过主键删除数据
     *
     * @param orderId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer orderId);

    PageResp<OrderListDTO> orderList(Integer pageIndex, Integer pageSize, String orderNum, String status);

    Result orderAdd(ShareOrder shareOrder);

    Result orderDel(Integer orderId);

    Result<OrderDetailsDTO>  orderDetails(Integer orderId);

    Result orderEdit(ShareOrder shareOrder);

    Result protalAddOrder(ProtalAddOrderVO protalAddOrderVO);

}