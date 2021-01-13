package cn.hehe.share.web.controller;

import cn.hehe.share.api.result.Result;
import cn.hehe.share.web.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
     * @param file 文件
     * @return
     */
    @PostMapping("/upload")
    public Result uploadFile( MultipartFile file){
        Result result = uploadService.uploadFile(file);
        return result;
    }

    @GetMapping("/image/{fileName:.+}")
    public void image(@PathVariable("fileName") String fileName, HttpServletRequest request, HttpServletResponse response){
        uploadService.image(fileName,request,response);
    }

}
