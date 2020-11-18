package cn.hehe.share.api.result;

import cn.hehe.share.api.enums.ResultEnum;

import java.io.Serializable;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-15 15:55
 **/
public class ResultUtils implements Serializable {


    public static Result success(){
        return new Result(ResultEnum.SUCCESS);
    }

    public static Result fail(){
        return new Result(ResultEnum.FAIL);
    }
}
