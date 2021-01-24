package cn.hehe.share.web.service.Impl;

import cn.hehe.share.web.entity.ShareUser;
import cn.hehe.share.web.dao.ShareUserDao;
import cn.hehe.share.web.service.ShareUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareUser)表服务实现类
 *
 * @author makejava
 * @since 2021-01-24 16:57:01
 */
@Service("shareUserService")
public class ShareUserServiceImpl implements ShareUserService {
    @Resource
    private ShareUserDao shareUserDao;

    /**
     * 通过ID查询单条数据
     *
     * @param username 主键
     * @return 实例对象
     */
    @Override
    public ShareUser queryById(String username) {
        return this.shareUserDao.queryById(username);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ShareUser> queryAllByLimit(int offset, int limit) {
        return this.shareUserDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param shareUser 实例对象
     * @return 实例对象
     */
    @Override
    public ShareUser insert(ShareUser shareUser) {
        this.shareUserDao.insert(shareUser);
        return shareUser;
    }

    /**
     * 修改数据
     *
     * @param shareUser 实例对象
     * @return 实例对象
     */
    @Override
    public ShareUser update(ShareUser shareUser) {
        this.shareUserDao.update(shareUser);
        return this.queryById(shareUser.getUsername());
    }

    /**
     * 通过主键删除数据
     *
     * @param username 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String username) {
        return this.shareUserDao.deleteById(username) > 0;
    }

    @Override
    public ShareUser doUserLogin(ShareUser userLogin) {
        String username = userLogin.getUsername();
        String password = userLogin.getPassword();
        ShareUser shareUser = shareUserDao.doUserLogin(username,password);
        return shareUser;
    }
}