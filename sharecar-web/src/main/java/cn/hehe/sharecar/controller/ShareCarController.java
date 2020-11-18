package cn.hehe.sharecar.controller;

import cn.hehe.share.api.carManager.CarListReq;
import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageReq;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.sharecar.entity.ShareCar;
import cn.hehe.sharecar.service.ShareCarService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * (ShareCar)表控制层
 *
 * @author makejava
 * @since 2020-11-11 18:36:07
 */
@Controller
@RequestMapping("/carManager")
public class ShareCarController {
    /**
     * 服务对象
     */
    @Resource
    private ShareCarService shareCarService;



    @RequestMapping("/")
    public String selectOne() {
        return "carManager/carManager";
    }

    @RequestMapping("/carManager-add")
    public String carManagerAdd() {
        return "carManager/carManager-add";
    }

    @PostMapping("/carList")
    @ResponseBody
    public List<ShareCar> carList(@RequestBody PageReq<CarListReq> req) {
        ShareCar shareCar = new ShareCar();
        shareCar.setName(req.getData().getName());
        shareCar.setStyle(req.getData().getStyle());
        shareCar.setIsDel(DBStatusEnums.N.getKey());
        PageHelper.startPage(req.getPageIndex(), req.getPageSize());
        List<ShareCar> shareCars = shareCarService.queryAll(shareCar);
        return shareCars;
    }


    @PostMapping("/delCar")
    @ResponseBody
    public Result delCar(Integer carId) {
         shareCarService.deleteById(carId);
        return ResultUtils.success();
    }

    @PostMapping("/styleList")
    @ResponseBody
    public Result<List<String>> styleList() {
        List<String> styleList = shareCarService.styleList();
        Result result = ResultUtils.success();
        result.setData(styleList);
        return result;
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
   /* @GetMapping("/selectOne.do")
    public ModelAndView selectOne(Integer id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("car",this.shareCarService.queryById(id));
        mv.setViewName("car");
        return mv;
    }*/

}