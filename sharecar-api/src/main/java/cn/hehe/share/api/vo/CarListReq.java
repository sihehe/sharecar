package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 10:27
 **/
@Data
public class CarListReq implements Serializable {


    private String name;


    private String style;


}
