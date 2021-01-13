package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-27 10:09
 **/
@Data
public class OrderListDTO implements Serializable {
    /**
     * 订单id
     */
    private Integer orderId;

    /**
     * 订单编号
     */
    private String orderNum;

    /**
     * 客户名称
     */
    private String  customerName;
    /**
     * 车辆名称
     */
    private String carName;

    /**
     * 订单金额
     */
    private BigDecimal  orderAmt;

    /**
     * 套餐名称
     */
    private String businessName;

    /**
     * 套餐次数
     */
    private Integer num;
    /**
     * 职工名称
     */
    private String empName;
    /**
     * 订单状态
     */
    private String orderStatus;

    private String orderStatusStr;
    /**
     * 支付方式
     */
    private String payType;

    /**
     * 押金
     */
    private BigDecimal cashPledge;

    /**
     * 是否过期
     */
    private String isExpire;


}
