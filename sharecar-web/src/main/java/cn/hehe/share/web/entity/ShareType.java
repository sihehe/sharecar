package cn.hehe.share.web.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (ShareType)实体类
 *
 * @author makejava
 * @since 2020-12-30 13:32:37
 */

@Data
public class ShareType implements Serializable {
    private static final long serialVersionUID = -54375431944156615L;
    /**
    * 类型id
    */
    private Integer typeId;
    /**
    * 类型主键
    */
    private String typeName;

}