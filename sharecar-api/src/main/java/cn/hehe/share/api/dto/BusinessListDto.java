package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-09 14:45
 **/
@Data
public class BusinessListDto implements Serializable {

    private Integer businessId;

    private String businessName;

    private String businessUnit;

    private String businessUnitStr;

    private String carType;

    private BigDecimal price;

    private String timeOutPrice;

    private BigDecimal cashPledge;

}
