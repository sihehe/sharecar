package cn.hehe.share.api.dto;

import lombok.Data;

import java.math.BigDecimal;


/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-12-30 13:36
 **/
@Data
public class CarListDTO {

    /**
     * 主键id
     */
    private Integer id;
    /**
     * 类型
     */
    private String typeName;
    /**
     * 类型id
     */
    private Integer typeId;
    /**
     * 名称
     */
    private String name;
    /**
     * 厂商
     */
    private String factoryOwn;
    /**
     * 车牌号
     */
    private String plate;
    /**
     * 车风格 (宽敞 紧凑 超大)
     */
    private String style;
    /**
     * 发动机类型 (电动 燃油)
     */
    private String engineType;
    /**
     * 地区
     */
    private String region;

    private BigDecimal cashPledge;
}
