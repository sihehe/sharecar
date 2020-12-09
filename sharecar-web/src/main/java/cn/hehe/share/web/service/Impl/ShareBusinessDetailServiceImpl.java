package cn.hehe.share.web.service.Impl;

import cn.hehe.share.web.entity.ShareBusinessDetail;
import cn.hehe.share.web.dao.ShareBusinessDetailDao;
import cn.hehe.share.web.service.ShareBusinessDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareBusinessDetail)表服务实现类
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
@Service("shareBusinessDetailService")
public class ShareBusinessDetailServiceImpl implements ShareBusinessDetailService {
    @Resource
    private ShareBusinessDetailDao shareBusinessDetailDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public ShareBusinessDetail queryById(Integer id) {
        return this.shareBusinessDetailDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ShareBusinessDetail> queryAllByLimit(int offset, int limit) {
        return this.shareBusinessDetailDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param shareBusinessDetail 实例对象
     * @return 实例对象
     */
    @Override
    public ShareBusinessDetail insert(ShareBusinessDetail shareBusinessDetail) {
        this.shareBusinessDetailDao.insert(shareBusinessDetail);
        return shareBusinessDetail;
    }

    /**
     * 修改数据
     *
     * @param shareBusinessDetail 实例对象
     * @return 实例对象
     */
    @Override
    public ShareBusinessDetail update(ShareBusinessDetail shareBusinessDetail) {
        this.shareBusinessDetailDao.update(shareBusinessDetail);
        return this.queryById(shareBusinessDetail.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.shareBusinessDetailDao.deleteById(id) > 0;
    }
}