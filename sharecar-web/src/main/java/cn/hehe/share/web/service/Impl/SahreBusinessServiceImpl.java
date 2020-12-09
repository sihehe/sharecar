package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.dto.BusinessListDto;
import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.web.dao.ShareBusinessDetailDao;
import cn.hehe.share.web.entity.SahreBusiness;
import cn.hehe.share.web.dao.SahreBusinessDao;
import cn.hehe.share.web.entity.ShareBusinessDetail;
import cn.hehe.share.web.service.SahreBusinessService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * (SahreBusiness)表服务实现类
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
@Service("sahreBusinessService")
public class SahreBusinessServiceImpl  implements SahreBusinessService {
    @Resource
    private SahreBusinessDao sahreBusinessDao;

    @Resource
    private ShareBusinessDetailDao shareBusinessDetailDao;

    @Override
    public PageResp<BusinessListDto> businessList(Integer pageIndex, Integer pageSize, String name, String type) {
        PageHelper.startPage(pageIndex, pageSize);
        List<BusinessListDto> businessList = sahreBusinessDao.businessList(name,type);
        PageInfo pageInfo = new PageInfo(businessList);
        PageResp<BusinessListDto> pageResp = new PageResp(pageInfo.getTotal(),pageInfo.getList());
        return pageResp;
    }

    @Override
    @Transactional
    public Result delBusiness(Integer businessId) {
        SahreBusiness sahreBusiness = new SahreBusiness();
        sahreBusiness.setBusinessId(businessId);
        sahreBusiness.setBusinessStatus(DBStatusEnums.N.getKey());
        sahreBusinessDao.update(sahreBusiness);
        shareBusinessDetailDao.updateByBusinessId(businessId,DBStatusEnums.Y.getKey());
        return ResultUtils.success();
    }
}