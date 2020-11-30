package cn.hehe.share.api.result;

import cn.hehe.share.api.enums.ResultEnum;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 15:55
 **/
public class ResultUtils<T> implements Serializable {


    public static Result success(){
        return new Result(ResultEnum.SUCCESS);
    }

    public static Result fail(){
        return new Result(ResultEnum.FAIL);
    }

    public static Result fail(String msg){
        Result result = new Result(ResultEnum.FAIL);
        result.setMsg(msg);
        return result;
    }
}
