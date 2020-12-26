package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.dao.ShareCustomerDao;
import cn.hehe.share.web.service.ShareCustomerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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

    /**
     * 通过ID查询单条数据
     *
     * @param customerId 主键
     * @return 实例对象
     */
    @Override
    public ShareCustomer queryById(Integer customerId) {
        return this.shareCustomerDao.queryById(customerId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ShareCustomer> queryAllByLimit(int offset, int limit) {
        return this.shareCustomerDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param shareCustomer 实例对象
     * @return 实例对象
     */
    @Override
    public ShareCustomer insert(ShareCustomer shareCustomer) {
        this.shareCustomerDao.insert(shareCustomer);
        return shareCustomer;
    }

    /**
     * 修改数据
     *
     * @param shareCustomer 实例对象
     * @return 实例对象
     */
    @Override
    public ShareCustomer update(ShareCustomer shareCustomer) {
        this.shareCustomerDao.update(shareCustomer);
        return this.queryById(shareCustomer.getCustomerId());
    }

    /**
     * 通过主键删除数据
     *
     * @param customerId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer customerId) {
        return this.shareCustomerDao.deleteById(customerId) > 0;
    }

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
}