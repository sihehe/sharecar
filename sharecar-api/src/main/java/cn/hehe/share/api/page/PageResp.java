package cn.hehe.share.api.page;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-19 17:16
 **/
@Data
public class PageResp<T> implements Serializable {


    private Long total;

    private List<T> rows;

    public PageResp(Long total, List rows) {
        this.total = total;
        this.rows = rows;
    }
}
