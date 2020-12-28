package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-27 17:06
 **/
@Data
public class ShareAddDept implements Serializable {
    private String deptName;
    private String deptGrad;
    private String deptBrithYear;
    private String deptPhone;
    private String deptCardNum;
    private String deptAddress;
}
