package cn.hehe.share.web.service;

import cn.hehe.share.web.entity.ShareBusinessDetail;
import java.util.List;

/**
 * (ShareBusinessDetail)表服务接口
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
public interface ShareBusinessDetailService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    ShareBusinessDetail queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<ShareBusinessDetail> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param shareBusinessDetail 实例对象
     * @return 实例对象
     */
    ShareBusinessDetail insert(ShareBusinessDetail shareBusinessDetail);

    /**
     * 修改数据
     *
     * @param shareBusinessDetail 实例对象
     * @return 实例对象
     */
    ShareBusinessDetail update(ShareBusinessDetail shareBusinessDetail);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}