package cn.hehe.share.web.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (SahreBusiness)实体类
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
@Data
public class SahreBusiness implements Serializable {
    private static final long serialVersionUID = -79590761136731802L;
    /**
    * 业务id
    */
    private Integer businessId;
    /**
    * 业务名称
    */
    private String businessName;
    /**
    * 业务单位(H-小时 D-日 M-月 Q-季度)
    */
    private String businessUnit;
    /**
    * 超时单位(H-小时 D-天)
    */
    private String timeOutUnit;
    /**
    * 业务状态(A-使用中 C-失效)
    */
    private String businessStatus;
    /**
    * 创建时间
    */
    private Date createTime;
    /**
    * 创建人
    */
    private String createUser;
    /**
    * 更新时间
    */
    private Date updateTime;
    /**
    * 更新人
    */
    private String updateUser;



}