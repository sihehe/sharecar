package cn.hehe.share.web.service;

import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.vo.ShareAddDept;
import cn.hehe.share.api.vo.ShareUpdateDept;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.entity.ShareDept;
import java.util.List;

/**
 * (ShareDept)表服务接口
 *
 * @author makejava
 * @since 2020-12-27 17:03:14
 */
public interface ShareDeptService {


    PageResp<ShareDept> deptList(Integer pageIndex, Integer pageSize, String deptName, String grad, String deptPhone);

    Result delDept(Integer deptId);

    Result addDept(ShareAddDept shareAddDept);

    Result<ShareDept> deptDetails(Integer deptId);

    Result updateDept(ShareUpdateDept shareUpdateDept);

}