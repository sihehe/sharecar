package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.ShareAddCustomer;
import cn.hehe.share.api.vo.ShareUpdateCustomer;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.dao.ShareCustomerDao;
import cn.hehe.share.web.service.ShareCustomerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareCustomer)表服务实现类
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */
@Service("shareCustomerService")
public class ShareCustomerServiceImpl implements ShareCustomerService {
    @Resource
    private ShareCustomerDao shareCustomerDao;


    @Override
    public PageResp<ShareCustomer> customerList(Integer pageIndex, Integer pageSize, String customerName, String grad,String customerPhone) {
        ShareCustomer shareCustomer = new ShareCustomer();
        shareCustomer.setCustomerName(customerName);
        shareCustomer.setCustomerGrad(grad);
        shareCustomer.setCustomerPhone(customerPhone);
        shareCustomer.setIsDel(DBStatusEnums.N.getKey());
        PageHelper.startPage(pageIndex,pageSize);
        List<ShareCustomer> shareCustomers = this.shareCustomerDao.queryAll(shareCustomer);
        PageInfo pageInfo = new PageInfo(shareCustomers);
        PageResp<ShareCustomer> pageResp = new PageResp(pageInfo.getTotal(),shareCustomers);
        return pageResp;
    }

    @Override
    public Result delCustomer(Integer customerId) {
        ShareCustomer shareCustomer = new ShareCustomer();
        shareCustomer.setCustomerId(customerId);
        shareCustomer.setIsDel(DBStatusEnums.Y.getKey());
        shareCustomerDao.update(shareCustomer);
        return ResultUtils.success();
    }

    @Override
    public Result addCustomer(ShareAddCustomer shareAddCustomer) {
        ShareCustomer shareCustomer = new ShareCustomer();
        BeanUtils.copyProperties(shareAddCustomer,shareCustomer);
        shareCustomer.setIsDel(DBStatusEnums.N.getKey());
        shareCustomerDao.insert(shareCustomer);
        return ResultUtils.success();
    }

    @Override
    public Result<ShareCustomer> customerDetails(Integer customerId) {
        ShareCustomer shareCustomer = shareCustomerDao.queryById(customerId);
        Result result = ResultUtils.success();
        result.setData(shareCustomer);
        return result;
    }

    @Override
    public Result updateCustomer(ShareUpdateCustomer shareUpdateCustomer) {
        ShareCustomer shareCustomer = new ShareCustomer();
        BeanUtils.copyProperties(shareUpdateCustomer,shareCustomer);
        shareCustomer.setCustomerId(shareUpdateCustomer.getCustomerId());
        shareCustomerDao.update(shareCustomer);
        return ResultUtils.success();
    }
}