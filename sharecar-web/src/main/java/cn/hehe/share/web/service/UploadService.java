package cn.hehe.share.web.service;

import cn.hehe.share.api.result.Result;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-20 11:21
 **/

public interface UploadService {


    Result uploadFile(MultipartFile file);

    void image(String fileName, HttpServletRequest request, HttpServletResponse response);

}
