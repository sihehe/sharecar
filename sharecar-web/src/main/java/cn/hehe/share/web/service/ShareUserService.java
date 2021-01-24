package cn.hehe.share.web.service;

import cn.hehe.share.web.entity.ShareUser;
import java.util.List;

/**
 * (ShareUser)表服务接口
 *
 * @author makejava
 * @since 2021-01-24 16:57:01
 */
public interface ShareUserService {

    /**
     * 通过ID查询单条数据
     *
     * @param username 主键
     * @return 实例对象
     */
    ShareUser queryById(String username);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareUser> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param shareUser 实例对象
     * @return 实例对象
     */
    ShareUser insert(ShareUser shareUser);

    /**
     * 修改数据
     *
     * @param shareUser 实例对象
     * @return 实例对象
     */
    ShareUser update(ShareUser shareUser);

    /**
     * 通过主键删除数据
     *
     * @param username 主键
     * @return 是否成功
     */
    boolean deleteById(String username);

    ShareUser doUserLogin(ShareUser userLogin);

}