package cn.hehe.share.web.entity;

import lombok.Data;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-10 18:59
 **/

@Data
public class Product {

    private String name;

    private String type;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
