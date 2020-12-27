package cn.hehe.share.web.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (ShareDept)实体类
 *
 * @author makejava
 * @since 2020-12-27 17:03:14
 */
@Data
public class ShareDept implements Serializable {
    private static final long serialVersionUID = -71823186730570804L;
    /**
    * 员工id
    */
    private Integer deptId;
    /**
    * 员工名称

    */
    private String deptName;
    /**
    * 员工性别
    */
    private String deptGrad;
    /**
    * 员工出生年
    */
    private String deptBrithYear;
    /**
    * 员工手机号
    */
    private String deptPhone;
    /**
    * 员工身份证号
    */
    private String deptCardNum;
    /**
    * 员工地址
    */
    private String deptAddress;

    private String isDel;


}