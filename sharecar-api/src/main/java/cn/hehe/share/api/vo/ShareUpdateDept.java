package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-27 17:07
 **/
@Data
public class ShareUpdateDept implements Serializable {

    /**
     * 员工id
     */
    private Integer deptId;
}
