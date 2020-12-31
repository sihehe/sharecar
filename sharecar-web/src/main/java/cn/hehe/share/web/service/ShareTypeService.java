package cn.hehe.share.web.service;

import cn.hehe.share.web.entity.ShareType;
import java.util.List;

/**
 * (ShareType)表服务接口
 *
 * @author makejava
 * @since 2020-12-30 13:32:37
 */
public interface ShareTypeService {

    /**
     * 通过ID查询单条数据
     *
     * @param typeId 主键
     * @return 实例对象
     */
    ShareType queryById(Integer typeId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareType> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param shareType 实例对象
     * @return 实例对象
     */
    ShareType insert(ShareType shareType);

    /**
     * 修改数据
     *
     * @param shareType 实例对象
     * @return 实例对象
     */
    ShareType update(ShareType shareType);

    /**
     * 通过主键删除数据
     *
     * @param typeId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer typeId);

    List<ShareType> typeList();

}