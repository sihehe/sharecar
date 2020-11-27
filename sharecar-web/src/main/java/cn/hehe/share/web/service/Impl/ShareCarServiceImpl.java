package cn.hehe.share.web.service.Impl;

import cn.hehe.share.web.dao.ShareCarDao;
import cn.hehe.share.web.entity.ShareCar;
import cn.hehe.share.web.service.ShareCarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareCar)表服务实现类
 *
 * @author makejava
 * @since 2020-11-11 18:36:07
 */
@Service("shareCarService")
public class ShareCarServiceImpl implements ShareCarService {
    @Resource
    private ShareCarDao shareCarDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public ShareCar queryById(Integer id) {
        return this.shareCarDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<ShareCar> queryAllByLimit(int offset, int limit) {
        return this.shareCarDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param shareCar 实例对象
     * @return 实例对象
     */
    @Override
    public ShareCar insert(ShareCar shareCar) {
        this.shareCarDao.insert(shareCar);
        return shareCar;
    }

    /**
     * 修改数据
     *
     * @param shareCar 实例对象
     * @return 实例对象
     */
    @Override
    public ShareCar update(ShareCar shareCar) {
        this.shareCarDao.update(shareCar);
        return this.queryById(shareCar.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.shareCarDao.deleteById(id) > 0;
    }

    @Override
    public List<ShareCar> queryAll(ShareCar shareCar) {
        List<ShareCar> shareCars = shareCarDao.queryAll(shareCar);
        return shareCars;
    }

    @Override
    public List<String> styleList() {
        List<String> stringList = shareCarDao.styleList();
        return stringList;
    }
}