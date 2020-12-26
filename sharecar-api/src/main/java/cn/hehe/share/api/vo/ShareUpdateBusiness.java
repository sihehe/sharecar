package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-19 13:00
 **/
@Data
public class ShareUpdateBusiness implements Serializable{

   private Integer businessId;
   private String name;
   private String businessUnit;
   private String businessTimeOutUnit;
   private List<ShareBusinessPrice> businessPriceList;
}

