package cn.hehe.sharecar.service;

import cn.hehe.share.api.result.Result;
import org.springframework.web.multipart.MultipartFile;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-20 11:21
 **/

public interface UploadService {


    Result uploadFile(String name, String type, MultipartFile file, Integer size);
}
