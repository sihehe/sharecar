package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-09 21:03
 **/

@Data
public class PriceDetailsDTO implements Serializable {


    private Integer id;

    private String carType;

    private BigDecimal price;

    private BigDecimal timeOutPrice;

    private BigDecimal cashPledge;

}
