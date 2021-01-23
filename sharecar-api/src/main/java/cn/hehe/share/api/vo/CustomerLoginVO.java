package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-23 13:21
 **/
@Data
public class CustomerLoginVO implements Serializable {

    private String phone;

    private String code;
}
