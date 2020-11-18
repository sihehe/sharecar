package cn.hehe.share.api.enums;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 15:52
 **/
public enum  ResultEnum {

    SUCCESS("200","成功",true),
    FAIL("500","系统异常",false)
    ;


    private String code;

    private String msg;

    private boolean status;

    ResultEnum(String code, String msg, boolean status) {
        this.code = code;
        this.msg = msg;
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


}
