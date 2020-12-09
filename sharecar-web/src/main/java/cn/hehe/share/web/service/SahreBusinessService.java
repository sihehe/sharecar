package cn.hehe.share.web.service;

import cn.hehe.share.api.dto.BusinessListDto;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.web.entity.SahreBusiness;
import java.util.List;

/**
 * (SahreBusiness)表服务接口
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
public interface SahreBusinessService {


    PageResp<BusinessListDto> businessList(Integer pageIndex, Integer pageSize, String name, String type);

    Result delBusiness(Integer businessId);

}