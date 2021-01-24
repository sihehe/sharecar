package cn.hehe.share.web.dao;

import cn.hehe.share.web.entity.ShareUser;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (ShareUser)表数据库访问层
 *
 * @author makejava
 * @since 2021-01-24 16:57:01
 */
public interface ShareUserDao {

    /**
     * 通过ID查询单条数据
     *
     * @param username 主键
     * @return 实例对象
     */
    ShareUser queryById(String username);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareUser> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param shareUser 实例对象
     * @return 对象列表
     */
    List<ShareUser> queryAll(ShareUser shareUser);

    /**
     * 新增数据
     *
     * @param shareUser 实例对象
     * @return 影响行数
     */
    int insert(ShareUser shareUser);

    /**
     * 修改数据
     *
     * @param shareUser 实例对象
     * @return 影响行数
     */
    int update(ShareUser shareUser);

    /**
     * 通过主键删除数据
     *
     * @param username 主键
     * @return 影响行数
     */
    int deleteById(String username);

    ShareUser doUserLogin(@Param("username") String username,@Param("password") String password);
}