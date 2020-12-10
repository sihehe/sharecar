package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-09 20:54
 **/
@Data
public class BusinessDetailsDto implements Serializable {


    private String businessId;

    private String businessName;

    private String businessUnit;

    private String timeOutUnit;

    private String createTime;

    private String createUser;

    private List<PriceDetailsDTO> priceDetailsDTOList;
}
