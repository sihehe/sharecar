package cn.hehe.share.web.entity;

import java.io.Serializable;

/**
 * (ShareCustomer)实体类
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */
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


    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerGrad() {
        return customerGrad;
    }

    public void setCustomerGrad(String customerGrad) {
        this.customerGrad = customerGrad;
    }

    public String getCustomerBrithYear() {
        return customerBrithYear;
    }

    public void setCustomerBrithYear(String customerBrithYear) {
        this.customerBrithYear = customerBrithYear;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerCardNum() {
        return customerCardNum;
    }

    public void setCustomerCardNum(String customerCardNum) {
        this.customerCardNum = customerCardNum;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

}