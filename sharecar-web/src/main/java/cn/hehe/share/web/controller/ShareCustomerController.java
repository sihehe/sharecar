package cn.hehe.share.web.controller;

import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.CustomerLoginVO;
import cn.hehe.share.api.vo.ShareAddCustomer;
import cn.hehe.share.api.vo.ShareUpdateCustomer;
import cn.hehe.share.web.entity.ShareCustomer;
import cn.hehe.share.web.service.ShareCustomerService;
import com.github.pagehelper.Page;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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



    @PostMapping("/delCustomer")
    @ResponseBody
    public Result delCustomer(Integer customerId){
        return shareCustomerService.delCustomer(customerId);
    }



    @PostMapping("/addCustomer")
    @ResponseBody
    public Result addCustomer( @RequestBody ShareAddCustomer shareAddCustomer){
        return shareCustomerService.addCustomer(shareAddCustomer);
    }


    @PostMapping("/login")
    @ResponseBody
    public Result login(@RequestBody CustomerLoginVO customerLoginVO, HttpServletRequest request, HttpServletResponse response){
        return  shareCustomerService.login(customerLoginVO);
    }


    @PostMapping("/customerDetails")
    @ResponseBody
    public Result<ShareCustomer> customerDetails(Integer customerId){
        return shareCustomerService.customerDetails(customerId);
    }

    @PostMapping("/updateCustomer")
    @ResponseBody
    public Result updateCustomer(@RequestBody ShareUpdateCustomer shareUpdateCustomer){
        return shareCustomerService.updateCustomer(shareUpdateCustomer);
    }

    @PostMapping("/portalUpdateCustomer")
    @ResponseBody
    public Result portalUpdateCustomer(@RequestBody ShareUpdateCustomer shareUpdateCustomer){
        return shareCustomerService.portalUpdateCustomer(shareUpdateCustomer);
    }

    @PostMapping("/portalGetCustomer")
    @ResponseBody
    public Result<ShareCustomer> portalGetCustomer(String phone){
        return shareCustomerService.portalGetCustomer(phone);
    }

}