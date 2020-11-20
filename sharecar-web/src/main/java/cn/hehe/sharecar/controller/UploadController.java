package cn.hehe.sharecar.controller;

import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.sharecar.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-20 11:12
 **/
@RequestMapping("/upload")
@Controller
public class UploadController {

    @Autowired
    private UploadService uploadService;

    /**
     *
     * @param name 文件名称
     * @param type 文件类型
     * @param file 未见
     * @param size 文件大小
     * @return
     */
    @PostMapping("/upload")
    public Result uploadFile(String name, String type, MultipartFile file, Integer size){
        Result result = uploadService.uploadFile(name,type,file,size);
        return result;
    }
}
