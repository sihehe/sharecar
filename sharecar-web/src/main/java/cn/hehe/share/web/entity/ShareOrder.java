package cn.hehe.share.web.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.io.Serializable;

/**
 * 共享管理订单表(ShareOrder)实体类
 *
 * @author makejava
 * @since 2020-11-26 14:04:48
 */
@Data
public class ShareOrder implements Serializable {

    private static final long serialVersionUID = -88778004731676362L;
    /**
    * 订单id
    */
    private Integer orderId;
    /**
    * 订单编号
    */
    private String orderNum;
    /**
    * 客户id
    */
    private Integer customerId;
    /**
    * 车辆id
    */
    private Integer carId;
    /**
    * 订单金额
    */
    private BigDecimal orderAmt;
    /**
    * 套餐id
    */
    private Integer businessId;
    /**
    * 套餐数量
    */
    private Integer num;
    /**
    * 租车开始时间
    */
    private String useStartTime;
    /**
    * 租车结束时间
    */
    private String useEndTime;
    /**
    * 订单时间
    */
    private Date orderTime;
    /**
    * 订单服务职工id
    */
    private Integer emptId;
    /**
    * 支付方式 (W-微信 Z-支付宝 Y-银联 P-POS机 C-现金)
    */
    private String payType;
    /**
     * 押金
     */
    private BigDecimal cashPledge;

    /**
    * 订单状态 (N-待支付 Y-已支付 C-作废)
    */
    private String orderStatus;
    /**
    * 是否过期(N-未过期 Y-已过期)
    */
    private String isExpire;

    /**
     * 过期数
     */
    private Integer expireNum;
    /**
     * 过期支付金额
     */
    private BigDecimal expireAmt;
    /**
     * 备注
     */
    private String remark;


}