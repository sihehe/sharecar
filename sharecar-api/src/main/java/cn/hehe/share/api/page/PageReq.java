package cn.hehe.share.api.page;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 10:28
 **/
@Data
public class PageReq<T> implements Serializable {


    private Integer pageIndex;

    private Integer pageSize;

    private T data;


}
