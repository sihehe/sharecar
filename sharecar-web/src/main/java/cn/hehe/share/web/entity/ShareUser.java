package cn.hehe.share.web.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (ShareUser)实体类
 *
 * @author makejava
 * @since 2021-01-24 16:57:01
 */

@Data
public class ShareUser implements Serializable {
    private static final long serialVersionUID = -65030584375011256L;
    
    private String username;
    
    private String password;
    
    private Integer age;
    
    private String name;
    
    private String role;



}