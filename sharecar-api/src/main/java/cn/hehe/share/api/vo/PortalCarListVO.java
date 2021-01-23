package cn.hehe.share.api.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-16 17:18
 **/
@Data
public class PortalCarListVO implements Serializable {

    // 品牌
    private String factoryOwn;
    // 价格
    private String cashPledge ;
    // 变速箱
    private String gearbox;
    //排量
    private String displacement;
    // 座位数;
    private String seats;
    // 燃油类型
    private String fuelType;
    // 颜色
    private String color;
    // 地区
    private String city;

    private String province;
    // 关键字
    private String keyword;
    // 排序字段
    private String sortFiled;
    // 排序规则
    private String sort;

    private int pageNum;

    private int pageSize;
}
