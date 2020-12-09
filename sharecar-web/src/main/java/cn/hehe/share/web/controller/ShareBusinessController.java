package cn.hehe.share.web.controller;

import cn.hehe.share.api.dto.BusinessListDto;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.web.entity.SahreBusiness;
import cn.hehe.share.web.service.SahreBusinessService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (SahreBusiness)表控制层
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
@Controller
@RequestMapping("/businessManager")
public class ShareBusinessController {
    /**
     * 服务对象
     */
    @Resource
    private SahreBusinessService sahreBusinessService;

    @RequestMapping("/")
    public String businessManager() {
        return "businessManager/businessManager";
    }

    @RequestMapping("/businessManager-add")
    public String businessManagerAdd() {
        return "businessManager/businessManager-add";
    }

    @RequestMapping("/businessManager-list")
    public String businessManagerList() {
        return "businessManager/businessManager-list";
    }

    @RequestMapping("/businessManager-edit")
    public String businessManagerEdit() {
        return "businessManager/businessManager-edit";
    }

    @RequestMapping("/businessManager-details")
    public String businessManagerDetails() {
        return "businessManager/businessManager-details";
    }



    @PostMapping("/businessList")
    @ResponseBody
    public PageResp<BusinessListDto> businessList(Integer pageIndex, Integer pageSize, String name, String type) { //PageReq<CarListReq> req
        return sahreBusinessService.businessList(pageIndex,pageSize,name,type);
    }


    @PostMapping("/delBusiness")
    @ResponseBody
    public Result delBusiness(Integer businessId) {
        return sahreBusinessService.delBusiness(businessId);
    }


}