package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-19 13:00
 **/
@Data
public class ShareAddBusiness implements Serializable{

   private String name;
   private String businessUnit;
   private String businessTimeOutUnit;
   private List<ShareBusinessPrice> businessPriceList;
}

