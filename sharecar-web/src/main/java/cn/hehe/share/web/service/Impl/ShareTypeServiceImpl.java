package cn.hehe.share.web.service.Impl;

import cn.hehe.share.web.entity.ShareType;
import cn.hehe.share.web.dao.ShareTypeDao;
import cn.hehe.share.web.service.ShareTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareType)表服务实现类
 *
 * @author makejava
 * @since 2020-12-30 13:32:37
 */
@Service("shareTypeService")
public class ShareTypeServiceImpl implements ShareTypeService {
    @Resource
    private ShareTypeDao shareTypeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param typeId 主键
     * @return 实例对象
     */
    @Override
    public ShareType queryById(Integer typeId) {
        return this.shareTypeDao.queryById(typeId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ShareType> queryAllByLimit(int offset, int limit) {
        return this.shareTypeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param shareType 实例对象
     * @return 实例对象
     */
    @Override
    public ShareType insert(ShareType shareType) {
        this.shareTypeDao.insert(shareType);
        return shareType;
    }

    /**
     * 修改数据
     *
     * @param shareType 实例对象
     * @return 实例对象
     */
    @Override
    public ShareType update(ShareType shareType) {
        this.shareTypeDao.update(shareType);
        return this.queryById(shareType.getTypeId());
    }

    /**
     * 通过主键删除数据
     *
     * @param typeId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer typeId) {
        return this.shareTypeDao.deleteById(typeId) > 0;
    }

    @Override
    public List<ShareType> typeList() {
        ShareType shareType = new ShareType();
        return shareTypeDao.queryAll(shareType);
    }
}