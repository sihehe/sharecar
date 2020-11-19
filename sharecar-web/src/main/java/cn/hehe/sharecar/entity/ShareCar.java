package cn.hehe.sharecar.entity;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * (ShareCar)实体类
 *
 * @author makejava
 * @since 2020-11-11 18:35:59
 */
public class ShareCar implements Serializable {
    /**
    * 主键id
    */
    private Integer id;
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
    private String ownerId;
    /**
    * 车辆图片
    */
    private String imageInfo;
    /**
    * 描述
    */
    private String descr;

    /**
     * 是否删除 Y删除 N不删除
     */
    private String isDel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFactoryOwn() {
        return factoryOwn;
    }

    public void setFactoryOwn(String factoryOwn) {
        this.factoryOwn = factoryOwn;
    }

    public String getPlate() {
        return plate;
    }

    public void setPlate(String plate) {
        this.plate = plate;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getGearbox() {
        return gearbox;
    }

    public void setGearbox(String gearbox) {
        this.gearbox = gearbox;
    }

    public Integer getSeats() {
        return seats;
    }

    public void setSeats(Integer seats) {
        this.seats = seats;
    }

    public Integer getDoor() {
        return door;
    }

    public void setDoor(Integer door) {
        this.door = door;
    }

    public BigDecimal getLength() {
        return length;
    }

    public void setLength(BigDecimal length) {
        this.length = length;
    }

    public BigDecimal getWidth() {
        return width;
    }

    public void setWidth(BigDecimal width) {
        this.width = width;
    }

    public BigDecimal getHight() {
        return hight;
    }

    public void setHight(BigDecimal hight) {
        this.hight = hight;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }

    public String getEngineHorsepower() {
        return engineHorsepower;
    }

    public void setEngineHorsepower(String engineHorsepower) {
        this.engineHorsepower = engineHorsepower;
    }

    public String getDisplacement() {
        return displacement;
    }

    public void setDisplacement(String displacement) {
        this.displacement = displacement;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    public String getImageInfo() {
        return imageInfo;
    }

    public void setImageInfo(String imageInfo) {
        this.imageInfo = imageInfo;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getIsDel() {
        return isDel;
    }

    public void setIsDel(String isDel) {
        this.isDel = isDel;
    }
}