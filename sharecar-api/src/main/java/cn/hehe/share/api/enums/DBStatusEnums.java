package cn.hehe.share.api.enums;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 16:21
 **/
public enum DBStatusEnums {


    Y("Y","是"),
    N("N","否")
    ;


    private String key;

    private String value;

    DBStatusEnums(String key, String value) {
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }}
