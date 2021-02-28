package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description: 订单详情dto
 * @author: Mr.si
 * @create: 2020-11-30 22:16
 **/
@Data
public class OrderDetailsDTO implements Serializable {
    /**
     * 客户id
     */
  private Integer customerId;

    /**
     * 客户名称
     */
  private String customerName;

    /**
     * 车辆id
     */
  private Integer carId;

    /**
     * 车辆名称
     */
  private String carName;
    /**
     * 押金
     */
  private BigDecimal cashPledge;

    /**
     * 业务id
     */
  private Integer businessId;
    /**
     * 业务名称
     */
  private String businessName;
    /**
     * 业务数量
     */
  private Integer num;
    /**
     * 开始结束时间
     */
  private String useStartTime;


  private String useEndTime;
    /**
     * 职工id
     */
  private Integer emptId;
    /**
     * 职工姓名
     */
  private String emptName;
    /**
     * 订单金额
     */
  private BigDecimal orderAmt;
    /**
     * 支付类型
     */
  private String payType;
    /**
     * 备注
     */
  private String remark;
}
