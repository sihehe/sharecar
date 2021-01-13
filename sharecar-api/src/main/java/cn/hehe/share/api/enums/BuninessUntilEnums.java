package cn.hehe.share.api.enums;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-13 10:59
 **/

public enum  BuninessUntilEnums {



    H("H","小时"),
    D("D","天"),
    M("M","月度"),
    Q("Q","季度"),
    ;


    private String code;

    private String msg;


    public static String getValue(String code){
        BuninessUntilEnums[] buninessUntilEnums = BuninessUntilEnums.values();
        for (BuninessUntilEnums buninessUntilEnum : buninessUntilEnums) {
            String code1 = buninessUntilEnum.getCode();
            if(code1.equals(code)){
                return buninessUntilEnum.getMsg();
            }
        }
        return null;
    }

    BuninessUntilEnums(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }}
