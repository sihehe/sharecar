package cn.hehe.share.api.result;

import cn.hehe.share.api.enums.ResultEnum;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 15:50
 **/
public class Result<T> implements Serializable {



    private String msg;

    private String code;

    private boolean status;

    private T data;

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public Result(String msg, String code, boolean status) {
        this.msg = msg;
        this.code = code;
        this.status = status;
    }

    public Result(ResultEnum resultEnum) {
        this.msg = resultEnum.getMsg();
        this.code = resultEnum.getCode();
        this.status = resultEnum.isStatus();
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
