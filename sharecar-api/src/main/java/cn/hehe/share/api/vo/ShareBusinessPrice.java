package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-19 13:10
 **/
@Data
public class ShareBusinessPrice implements Serializable {

    private Integer id;
    private String type;
    private BigDecimal price;
    private BigDecimal outTimePrice;
    private BigDecimal cashPledge;
}
