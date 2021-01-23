package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.CustomerLoginVO;
import cn.hehe.share.api.vo.ShareAddCustomer;
import cn.hehe.share.api.vo.ShareUpdateCustomer;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.dao.ShareCustomerDao;
import cn.hehe.share.web.service.ShareCustomerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

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
        if(StringUtils.isEmpty(shareAddCustomer.getCustomerAddress())){
            shareCustomer.setCustomerAddress("北京市朝阳区");
        }
        if(StringUtils.isEmpty(shareAddCustomer.getCustomerGrad())){
            shareCustomer.setCustomerGrad("男");
        }
        if(StringUtils.isEmpty(shareAddCustomer.getCustomerName())){
            shareCustomer.setCustomerName("访问用户");
        }
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

    @Override
    public Result portalUpdateCustomer(ShareUpdateCustomer shareUpdateCustomer) {
        ShareCustomer shareCustomer = new ShareCustomer();
        BeanUtils.copyProperties(shareUpdateCustomer,shareCustomer);
        // 根据手机号获得sharecustomer
        ShareCustomer customer = shareCustomerDao.queryByPhone(shareUpdateCustomer.getCustomerPhone());
        Integer customerId = customer.getCustomerId();
        shareCustomer.setCustomerId(customerId);
        shareCustomerDao.update(shareCustomer);
        return ResultUtils.success();
    }

    @Override
    public Result login(CustomerLoginVO customerLoginVO) {
        // 校验code 是否为123456
        String phone = customerLoginVO.getPhone();
        String code = customerLoginVO.getCode();
        if(!"123456".equals(code)){
            return ResultUtils.fail("验证码输入不正确");
        }
        // 根据手机号查询是否存在
        ShareCustomer customer = shareCustomerDao.queryByPhone(phone);
        if(Objects.isNull(customer)){
            ShareAddCustomer shareCustomer = new ShareAddCustomer();
            shareCustomer.setCustomerPhone(phone);
            this.addCustomer(shareCustomer);
        }
       return ResultUtils.success();
    }

    @Override
    public Result<ShareCustomer> portalGetCustomer(String phone) {
        ShareCustomer shareCustomer = this.shareCustomerDao.queryByPhone(phone);
        Result<ShareCustomer> success = ResultUtils.success();
        success.setData(shareCustomer);
        return success;
    }
}