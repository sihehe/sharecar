package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.cons.Cons;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.web.service.UploadService;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-20 11:23
 **/
@Service
public class UploadServiceImpl implements UploadService {


    @Override
    public Result uploadFile(MultipartFile file) {
        String name = file.getOriginalFilename();
        File file2 = new File(Cons.FILE_UPLOAD_PATH);
        if(!file2.exists()){
            file2.mkdir();
        }
        File file1 = new File(Cons.FILE_UPLOAD_PATH +name);
        try {
            file.transferTo(file1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResultUtils.success();
    }

    @Override
    public void image(String fileName, HttpServletRequest request, HttpServletResponse response) {
        File file1 = new File(Cons.FILE_UPLOAD_PATH +fileName);
        if(!file1.exists()){
            try {
               response.sendRedirect(request.getContextPath()+"/404");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        ServletOutputStream outputStream = null;
        try {
            outputStream = response.getOutputStream();
            FileInputStream fileInputStream = new FileInputStream(file1);
            IOUtils.copy(fileInputStream,outputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
