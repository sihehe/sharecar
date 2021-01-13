package cn.hehe.share.web.controller;

import cn.hehe.share.api.dto.OrderDetailsDTO;
import cn.hehe.share.api.dto.OrderListDTO;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.web.entity.ShareOrder;
import cn.hehe.share.web.service.ShareOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-26 13:52
 **/
@Controller
@RequestMapping("/orderManager")
public class OrderManagerController {


    @Autowired
    private ShareOrderService shareOrderService;

    @RequestMapping("/")
    public String index(){
        return "orderManager/orderManager";
    }

    @RequestMapping("/orderManager-add")
    public String add(){
        return "orderManager/orderManager-add";
    }

    @RequestMapping("/orderManager-details")
    public String details(){
        return "orderManager/orderManager-details";
    }

    @RequestMapping("/orderManager-edit")
    public String edit(){
        return "orderManager/orderManager-edit";
    }


    @PostMapping("/orderList")
    @ResponseBody
    public PageResp<OrderListDTO> orderList(Integer pageIndex, Integer pageSize, String orderNum, String status) { //PageReq<CarListReq> req
        return shareOrderService.orderList(pageIndex,pageSize,orderNum,status);
    }


    @PostMapping("/orderAdd")
    @ResponseBody
    public Result orderAdd(@RequestBody ShareOrder shareOrder) {
        return shareOrderService.orderAdd(shareOrder);
    }

    @PostMapping("/orderDel")
    @ResponseBody
    public Result orderDel(Integer orderId) {
        return shareOrderService.orderDel(orderId);
    }


    @PostMapping("/orderDetails")
    @ResponseBody
    public Result<OrderDetailsDTO> orderDetails(Integer orderId) {
        return shareOrderService.orderDetails(orderId);
    }

    @PostMapping("/orderEdit")
    @ResponseBody
    public Result orderEdit(ShareOrder shareOrder) {
        return shareOrderService.orderEdit(shareOrder);
    }

}
