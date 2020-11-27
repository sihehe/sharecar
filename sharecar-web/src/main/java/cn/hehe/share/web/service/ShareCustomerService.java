package cn.hehe.share.web.service;

import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.web.entity.ShareCustomer;
import java.util.List;

/**
 * (ShareCustomer)表服务接口
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */
public interface ShareCustomerService {

    /**
     * 通过ID查询单条数据
     *
     * @param customerId 主键
     * @return 实例对象
     */
    ShareCustomer queryById(Integer customerId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareCustomer> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param shareCustomer 实例对象
     * @return 实例对象
     */
    ShareCustomer insert(ShareCustomer shareCustomer);

    /**
     * 修改数据
     *
     * @param shareCustomer 实例对象
     * @return 实例对象
     */
    ShareCustomer update(ShareCustomer shareCustomer);

    /**
     * 通过主键删除数据
     *
     * @param customerId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer customerId);

    PageResp<ShareCustomer> customerList(Integer pageIndex, Integer pageSize, String customerName, String grad);
}