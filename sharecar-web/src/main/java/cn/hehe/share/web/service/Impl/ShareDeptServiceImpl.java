package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.ShareAddDept;
import cn.hehe.share.api.vo.ShareUpdateDept;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.entity.ShareDept;
import cn.hehe.share.web.dao.ShareDeptDao;
import cn.hehe.share.web.service.ShareDeptService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareDept)表服务实现类
 *
 * @author makejava
 * @since 2020-12-27 17:03:14
 */
@Service("shareDeptService")
public class ShareDeptServiceImpl implements ShareDeptService {
    @Resource
    private ShareDeptDao shareDeptDao;



    @Override
    public PageResp<ShareDept> deptList(Integer pageIndex, Integer pageSize, String deptName, String grad, String deptPhone) {
        ShareDept shareDept = new ShareDept();
        shareDept.setDeptName(deptName);
        shareDept.setDeptPhone(deptPhone);
        shareDept.setDeptGrad(grad);
        shareDept.setIsDel(DBStatusEnums.N.getKey());
        PageHelper.startPage(pageIndex,pageSize);
        List<ShareDept> shareDeptList = shareDeptDao.queryAll(shareDept);
        PageInfo pageInfo = new PageInfo(shareDeptList);
        PageResp<ShareDept> pageResp = new PageResp(pageInfo.getTotal(),shareDeptList);
        return pageResp;
    }

    @Override
    public Result delDept(Integer deptId) {
        ShareDept shareDept = new ShareDept();
        shareDept.setDeptId(deptId);
        shareDept.setIsDel(DBStatusEnums.Y.getKey());
        shareDeptDao.update(shareDept);
        return ResultUtils.success();
    }

    @Override
    public Result addDept(ShareAddDept shareAddDept) {
        ShareDept shareDept = new ShareDept();
        BeanUtils.copyProperties(shareAddDept,shareDept);
        shareDept.setIsDel(DBStatusEnums.N.getKey());
        shareDeptDao.insert(shareDept);
        return ResultUtils.success();
    }

    @Override
    public Result<ShareDept> deptDetails(Integer deptId) {
        ShareDept shareDept = shareDeptDao.queryById(deptId);
        Result result = ResultUtils.success();
        result.setData(shareDept);
        return result;
    }

    @Override
    public Result updateDept(ShareUpdateDept shareUpdateDept) {
        ShareDept shareDept = new ShareDept();
        BeanUtils.copyProperties(shareUpdateDept,shareDept);
        shareDept.setDeptId(shareUpdateDept.getDeptId());
        shareDeptDao.update(shareDept);
        return ResultUtils.success();
    }
}