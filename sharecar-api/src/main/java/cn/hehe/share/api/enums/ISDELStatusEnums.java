package cn.hehe.share.api.enums;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-30 20:38
 **/
public enum  ISDELStatusEnums {

    ZERO("不删除",0),
    ONE("删除",1)
    ;


    private String key;

    private Integer value;


    ISDELStatusEnums(String key, Integer value) {
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }}
