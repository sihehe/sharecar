package cn.hehe.share.web.controller;

import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.vo.ShareAddCustomer;
import cn.hehe.share.api.vo.ShareAddDept;
import cn.hehe.share.api.vo.ShareUpdateCustomer;
import cn.hehe.share.api.vo.ShareUpdateDept;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.entity.ShareDept;
import cn.hehe.share.web.service.ShareCustomerService;
import cn.hehe.share.web.service.ShareDeptService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (ShareCustomer)表控制层
 *
 * @author makejava
 * @since 2020-11-27 16:12:21
 */
@Controller
@RequestMapping("deptManager")
public class DeptController {
    /**
     * 服务对象
     */
    @Resource
    private ShareDeptService shareDeptService;


    @RequestMapping("/")
    public String businessManager() {
        return "deptManager/deptManager";
    }

    @RequestMapping("/deptManager-add")
    public String deptManagerAdd() {
        return "deptManager/deptManager-add";
    }

    @RequestMapping("/deptManager-list")
    public String deptManagerList() {
        return "deptManager/deptManager-list";
    }

    @RequestMapping("/deptManager-edit")
    public String deptManagerEdit() {
        return "deptManager/deptManager-edit";
    }

    @RequestMapping("/deptManager-details")
    public String deptManagerDetails() {
        return "deptManager/deptManager-details";
    }




    @PostMapping("/deptList")
    @ResponseBody
    public PageResp<ShareDept> deptList(Integer pageIndex, Integer pageSize,String deptName,String grad,String deptPhone){
        return shareDeptService.deptList(pageIndex,pageSize,deptName,grad,deptPhone);
    }



    @PostMapping("/delDept")
    @ResponseBody
    public Result delDept(Integer deptId){
        return shareDeptService.delDept(deptId);
    }



    @PostMapping("/addDept")
    @ResponseBody
    public Result addDept( @RequestBody ShareAddDept shareAddDept){
        return shareDeptService.addDept(shareAddDept);
    }

    @PostMapping("/deptDetails")
    @ResponseBody
    public Result<ShareDept> deptDetails(Integer deptId){
        return shareDeptService.deptDetails(deptId);
    }

    @PostMapping("/updateDept")
    @ResponseBody
    public Result updateDept(@RequestBody ShareUpdateDept shareUpdateDept){
        return shareDeptService.updateDept(shareUpdateDept);
    }

}