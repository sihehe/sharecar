package cn.hehe.share.web.service;

import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.vo.ShareAddCustomer;
import cn.hehe.share.api.vo.ShareUpdateCustomer;
import cn.hehe.share.web.entity.ShareCustomer;
import java.util.List;

/**
 * (ShareCustomer)表服务接口
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */
public interface ShareCustomerService {


    PageResp<ShareCustomer> customerList(Integer pageIndex, Integer pageSize, String customerName, String grad,String customerPhone);

    Result delCustomer(Integer customerId);

    Result addCustomer(ShareAddCustomer shareAddCustomer);

    Result<ShareCustomer> customerDetails(Integer customerId);

    Result updateCustomer(ShareUpdateCustomer shareUpdateCustomer);

}