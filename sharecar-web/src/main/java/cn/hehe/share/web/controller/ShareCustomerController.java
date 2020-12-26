package cn.hehe.share.web.controller;

import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.service.ShareCustomerService;
import com.github.pagehelper.Page;
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
@RequestMapping("customerManager")
public class ShareCustomerController {
    /**
     * 服务对象
     */
    @Resource
    private ShareCustomerService shareCustomerService;


    @RequestMapping("/")
    public String businessManager() {
        return "customerManager/customerManager";
    }

    @RequestMapping("/customerManager-add")
    public String customerManagerAdd() {
        return "customerManager/customerManager-add";
    }

    @RequestMapping("/customerManager-list")
    public String customerManagerList() {
        return "customerManager/customerManager-list";
    }

    @RequestMapping("/customerManager-edit")
    public String customerManagerEdit() {
        return "customerManager/customerManager-edit";
    }

    @RequestMapping("/customerManager-details")
    public String customerManagerDetails() {
        return "customerManager/customerManager-details";
    }




    @PostMapping("/customerList")
    @ResponseBody
    public PageResp<ShareCustomer> customerList(Integer pageIndex, Integer pageSize,String customerName,String grad,String customerPhone){
        return shareCustomerService.customerList(pageIndex,pageSize,customerName,grad,customerPhone);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public ShareCustomer selectOne(Integer id) {
        return this.shareCustomerService.queryById(id);
    }


    @PostMapping("/delCustomer")
    @ResponseBody
    public Result delCustomer(Integer customerId){
        return shareCustomerService.delCustomer(customerId);
    }

}