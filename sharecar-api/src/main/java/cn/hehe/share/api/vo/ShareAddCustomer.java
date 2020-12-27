package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-27 15:59
 **/
@Data
public class ShareAddCustomer implements Serializable {


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

}
