package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.dto.OrderDetailsDTO;
import cn.hehe.share.api.dto.OrderListDTO;
import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.enums.ISDELStatusEnums;
import cn.hehe.share.api.enums.OrderStatus;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.utils.OrderUtils;
import cn.hehe.share.web.dao.*;
import cn.hehe.share.web.entity.*;
import cn.hehe.share.web.service.ShareOrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

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

    @Resource
    private ShareCustomerDao shareCustomerDao;


    @Resource
    private ShareCarDao shareCarDao;

    @Resource
    private ShareDeptDao shareDeptDao;


    @Resource
    private SahreBusinessDao sahreBusinessDao;

    @Resource
    private ShareBusinessDetailDao shareBusinessDetailDao;
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
        shareOrder.setIsDel(ISDELStatusEnums.ZERO.getValue());
        PageHelper.startPage(pageIndex, pageSize);
        List<ShareOrder> shareOrders = this.shareOrderDao.queryAll(shareOrder);
        List<OrderListDTO> orderListDTOList = new ArrayList<>();
        for (ShareOrder order : shareOrders) {
            OrderListDTO orderListDTO = new OrderListDTO();
            BeanUtils.copyProperties(order,orderListDTO);
            String orderStatus = orderListDTO.getOrderStatus();
            orderListDTO.setOrderStatusStr(OrderStatus.getValue(orderStatus));
//            查询套餐名称
            Integer businessId = order.getBusinessId();
            SahreBusiness sahreBusiness = sahreBusinessDao.queryById(businessId);
            String businessName = sahreBusiness.getBusinessName();
            orderListDTO.setBusinessName(businessName);
//             查询车辆名称
            Integer carId = order.getCarId();
            ShareCar shareCar = shareCarDao.queryById(carId);
            orderListDTO.setCarName(shareCar.getName());
//              查询客户名称
            Integer customerId = order.getCustomerId();
            ShareCustomer shareCustomer = shareCustomerDao.queryById(customerId);
            Integer emptId = order.getEmptId();
            ShareDept shareDept = shareDeptDao.queryById(emptId);
            orderListDTO.setEmpName(shareDept.getDeptName());
            orderListDTO.setCustomerName(shareCustomer.getCustomerName());
            orderListDTO.setCashPledge(shareCar.getCashPledge());
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
        ShareCustomer shareCustomer = shareCustomerDao.queryById(shareOrder.getCustomerId());
        if(Objects.isNull(shareCustomer)){
            return ResultUtils.fail("客户信息不存在");
        }
//        校验车辆信息是否存在
        ShareCar shareCar = shareCarDao.queryById(shareOrder.getCarId());
        if(Objects.isNull(shareCar)){
            return ResultUtils.fail("车辆信息不存在");
        }
//        校验职工信息是否存在
        ShareDept shareDept = shareDeptDao.queryById(shareOrder.getEmptId());
        if(Objects.isNull(shareDept)){
            return ResultUtils.fail("职工信息不存在");
        }
//        校验套餐id是否存在
        SahreBusiness sahreBusiness = sahreBusinessDao.queryById(shareOrder.getBusinessId());
        if(Objects.isNull(sahreBusiness)){
            return ResultUtils.fail("套餐信息不存在");
        }
        ShareBusinessDetail queryShareBusinessDetail = new ShareBusinessDetail();
        queryShareBusinessDetail.setCarType(shareCar.getTypeId());
        queryShareBusinessDetail.setBusinessId(sahreBusiness.getBusinessId());
        queryShareBusinessDetail.setIsDel(DBStatusEnums.N.getKey());
        List<ShareBusinessDetail> shareBusinessDetails = shareBusinessDetailDao.queryAll(queryShareBusinessDetail);
        if(CollectionUtils.isEmpty(shareBusinessDetails)){
            return ResultUtils.fail("套餐信息不存在");
        }
        if(shareBusinessDetails.size() > 1){
            return ResultUtils.fail("套餐信息设置有误");
        }
        ShareBusinessDetail shareBusinessDetail = shareBusinessDetails.get(0);
        // 押金
        BigDecimal cashPledge = shareCar.getCashPledge();
        shareOrder.setCashPledge(cashPledge);
        BigDecimal price = shareBusinessDetail.getPrice();
        Integer num = shareOrder.getNum();
//        计算订单金额
        BigDecimal orderAmt = price.multiply(BigDecimal.valueOf(num)).add(cashPledge);
        shareOrder.setOrderAmt(orderAmt);
        String useStartTime = shareOrder.getUseStartTime();
        String[] split = useStartTime.split(" ~ ");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyyMMddHHmmss");
        try {
            shareOrder.setUseStartTime(simpleDateFormat1.format(simpleDateFormat.parse(split[0])));
            shareOrder.setUseEndTime(simpleDateFormat1.format(simpleDateFormat.parse(split[1])));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        shareOrder.setOrderTime(new Date());
        shareOrder.setOrderStatus(DBStatusEnums.N.getKey());
        shareOrder.setIsDel(0);

        this.shareOrderDao.insert(shareOrder);
        return ResultUtils.success();
    }

    @Override
    public Result orderDel(Integer orderId) {
        ShareOrder shareOrder = new ShareOrder();
        shareOrder.setOrderId(orderId);
        shareOrder.setIsDel(ISDELStatusEnums.ONE.getValue());
        this.shareOrderDao.update(shareOrder);
        return ResultUtils.success();
    }

    @Override
    public Result<OrderDetailsDTO>  orderDetails(Integer orderId) {
        OrderDetailsDTO orderDetails = this.shareOrderDao.orderDetails(orderId);
        if(Objects.isNull(orderDetails)){
            return ResultUtils.fail("查询不到订单");
        }
        // 查询业务
        Integer carId = orderDetails.getCarId();
        ShareCar shareCar = shareCarDao.queryById(carId);
        orderDetails.setCashPledge(shareCar.getCashPledge());
        Result result = ResultUtils.success();
        result.setData(orderDetails);
        return result;
    }

    @Override
    public Result orderEdit(ShareOrder shareOrder) {
//       先查询
        ShareOrder order = this.shareOrderDao.queryById(shareOrder.getOrderId());
        if(Objects.isNull(order)){
            return ResultUtils.fail("更新失败");
        }
        this.shareOrderDao.update(shareOrder);
        return ResultUtils.success();
    }
}