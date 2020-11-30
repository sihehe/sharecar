package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.dto.OrderListDTO;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.utils.OrderUtils;
import cn.hehe.share.web.entity.ShareOrder;
import cn.hehe.share.web.dao.ShareOrderDao;
import cn.hehe.share.web.service.ShareOrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * 共享管理订单表(ShareOrder)表服务实现类
 *
 * @author makejava
 * @since 2020-11-26 14:04:48
 */
@Service("shareOrderService")
public class ShareOrderServiceImpl implements ShareOrderService {
    @Resource
    private ShareOrderDao shareOrderDao;

    /**
     * 通过ID查询单条数据
     *
     * @param orderId 主键
     * @return 实例对象
     */
    @Override
    public ShareOrder queryById(Integer orderId) {
        return this.shareOrderDao.queryById(orderId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ShareOrder> queryAllByLimit(int offset, int limit) {
        return this.shareOrderDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param shareOrder 实例对象
     * @return 实例对象
     */
    @Override
    public ShareOrder insert(ShareOrder shareOrder) {
        this.shareOrderDao.insert(shareOrder);
        return shareOrder;
    }

    /**
     * 修改数据
     *
     * @param shareOrder 实例对象
     * @return 实例对象
     */
    @Override
    public ShareOrder update(ShareOrder shareOrder) {
        this.shareOrderDao.update(shareOrder);
        return this.queryById(shareOrder.getOrderId());
    }

    /**
     * 通过主键删除数据
     *
     * @param orderId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer orderId) {
        return this.shareOrderDao.deleteById(orderId) > 0;
    }


    @Override
    public PageResp<OrderListDTO> orderList(Integer pageIndex, Integer pageSize, String orderNum, String status) {
        ShareOrder shareOrder = new ShareOrder();
        shareOrder.setOrderStatus(status);
        shareOrder.setOrderNum(orderNum);
        PageHelper.startPage(pageIndex, pageSize);
        List<ShareOrder> shareOrders = this.shareOrderDao.queryAll(shareOrder);
        List<OrderListDTO> orderListDTOList = new ArrayList<>();
        for (ShareOrder order : shareOrders) {
            OrderListDTO orderListDTO = new OrderListDTO();
            BeanUtils.copyProperties(order,orderListDTO);
//            查询套餐名称
            Integer businessId = order.getBusinessId();
//             查询车辆名称
            Integer carId = order.getCarId();
//              查询客户名称
            Integer customerId = order.getCustomerId();

            orderListDTOList.add(orderListDTO);
        }
        PageInfo pageInfo = new PageInfo(shareOrders);
        PageResp<OrderListDTO> pageResp = new PageResp(pageInfo.getTotal(),orderListDTOList);
        return  pageResp;
    }

    @Override
    public Result orderAdd(ShareOrder shareOrder) {
//         生产订单编号
        Random random = new Random();
        int i = random.nextInt(100);
        String orderNum = OrderUtils.getOrderCode(i);
        shareOrder.setOrderNum(orderNum);
//        校验客户是否存在

//        校验车辆信息是否存在

//        校验职工信息是否存在

//        校验套餐id是否存在
//        计算订单金额

//

        shareOrder.setOrderAmt(BigDecimal.ONE);
        this.shareOrderDao.insert(shareOrder);
        return ResultUtils.success();
    }
}