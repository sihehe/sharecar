package cn.hehe.share.api.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-02-28 11:27
 **/
@Getter
@Setter
@ToString
public class ProtalAddOrderVO implements Serializable {

    /**
     * 客户id
     */
    private String phone;
    /**
     * 车辆id
     */
    private Integer carId;
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
     * 备注
     */
    private String remark;

}
