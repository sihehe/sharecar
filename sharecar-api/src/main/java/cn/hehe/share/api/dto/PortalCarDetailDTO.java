package cn.hehe.share.api.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-17 17:22
 **/
@Data
public class PortalCarDetailDTO implements Serializable {

    /**
     * 主键id
     */
    private Integer id;
    /**
     * 类型id
     */
    private Integer typeId;

    private String typeName;
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
     * 颜色
     */
    private String color;
    /**
     * 变速箱
     */
    private String gearbox;
    /**
     * 座位数
     */
    private Integer seats;

    /**
     * 车门数
     */
    private Integer door;
    /**
     * 车长
     */
    private BigDecimal length;
    /**
     * 车宽
     */
    private BigDecimal width;
    /**
     * 车高
     */
    private BigDecimal hight;
    /**
     * 车重
     */
    private BigDecimal weight;
    /**
     * 发动机类型 (电动 燃油)
     */
    private String engineType;
    /**
     * 引擎马力
     */
    private String engineHorsepower;
    /**
     * 排量
     */
    private String displacement;
    /**
     * 燃油类型
     */
    private String fuelType;
    /**
     * 地区
     */
    private String region;
    /**
     * 拥有人id
     */
    private Integer ownerId;
    /**
     * 车辆图片
     */
    private String imageInfo;
    /**
     * 描述
     */
    private String descr;

    private BigDecimal cashPledge;

    /**
     * 是否删除 Y删除 N不删除
     */
    private String isDel;
}
