package cn.hehe.share.web.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (ShareCustomer)实体类
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */

@Data
public class ShareCustomer implements Serializable {
    private static final long serialVersionUID = -20926919804298264L;
    /**
    * 客户id
    */
    private Integer customerId;
    /**
    * 客户名称

    */
    private String customerName;
    /**
    * 客户性别
    */
    private String customerGrad;
    /**
    * 客户出生年
    */
    private String customerBrithYear;
    /**
    * 客户手机号
    */
    private String customerPhone;
    /**
    * 客户身份证号
    */
    private String customerCardNum;
    /**
    * 客户地址
    */
    private String customerAddress;

    private String isDel;

    private String isBlack;

    private Integer credit;



}