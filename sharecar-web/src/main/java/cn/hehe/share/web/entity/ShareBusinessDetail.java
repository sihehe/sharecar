package cn.hehe.share.web.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.io.Serializable;

/**
 * (ShareBusinessDetail)实体类
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */

@Data
public class ShareBusinessDetail implements Serializable {
    private static final long serialVersionUID = -74724148874245470L;
    /**
    * 主键id
    */
    private Integer id;
    /**
    * 业务id
    */
    private Integer businessId;
    /**
    * 车型

    */
    private String carType;
    /**
    * 单价
    */
    private BigDecimal price;
    /**
    * 超时单价(按照业务类型规则计算)
    */
    private BigDecimal timeOutPrice;
    /**
    * 是否删除(N-不删除Y-删除)
    */
    private String isDel;
    /**
    * 创建时间
    */
    private Date createTime;
    /**
    * 创建人
    */
    private String createUser;
    /**
    * 更新日期
    */
    private Date updateTime;
    /**
    * 更新人
    */
    private String updateUser;



}