package cn.hehe.sharecar.service.Impl;

import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.sharecar.service.UploadService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-20 11:23
 **/
@Service
public class UploadServiceImpl implements UploadService {



    @Override
    public Result uploadFile(String name, String type, MultipartFile file, Integer size) {
        System.out.println();
        return ResultUtils.success();
    }
}
