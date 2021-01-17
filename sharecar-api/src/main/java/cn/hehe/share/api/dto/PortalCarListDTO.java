package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-16 17:20
 **/
@Data
public class PortalCarListDTO implements Serializable {
    private Integer carId;
    private String carName;
    private String region;
    private String fuelType;
    private Integer seats;
    private BigDecimal cashPledge;
    private String image;
}
