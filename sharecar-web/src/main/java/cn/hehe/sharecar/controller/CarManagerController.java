package cn.hehe.sharecar.controller;

import cn.hehe.share.api.carManager.CarListReq;
import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageReq;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.sharecar.entity.ShareCar;
import cn.hehe.sharecar.service.ShareCarService;
import cn.hehe.sharecar.service.UploadService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import sun.awt.image.IntegerComponentRaster;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Objects;

/**
 * (ShareCar)表控制层
 *
 * @author makejava
 * @since 2020-11-11 18:36:07
 */
@Controller
@RequestMapping("/carManager")
public class CarManagerController {
    /**
     * 服务对象
     */
    @Resource
    private ShareCarService shareCarService;

    @Autowired
    private UploadService uploadService;



    @RequestMapping("/")
    public String selectOne() {
        return "carManager/carManager";
    }

    @RequestMapping("/carManager-add")
    public String carManagerAdd() {
        return "carManager/carManager-add";
    }

    @RequestMapping("/carManager-edit")
    public String carManagerEdit() {
        return "carManager/carManager-edit";
    }

    @RequestMapping("/carManager-details")
    public String carManagerDetails() {
        return "carManager/carManager-details";
    }

/*
    @RequestMapping("/upload")
    public String upload() {
        return "carManager/upload";
    }*/

    @PostMapping("/carList")
    @ResponseBody
    public PageResp<ShareCar> carList(Integer pageIndex, Integer pageSize,String name,String style) { //PageReq<CarListReq> req
        ShareCar shareCar = new ShareCar();
        shareCar.setName(name);
        shareCar.setStyle(style);
        shareCar.setIsDel(DBStatusEnums.N.getKey());
        PageHelper.startPage(pageIndex, pageSize);
        List<ShareCar> shareCars = shareCarService.queryAll(shareCar);
        PageInfo pageInfo = new PageInfo(shareCars);
        PageResp<ShareCar> pageResp = new PageResp(pageInfo.getTotal(),pageInfo.getList());
        return pageResp;
    }

    @PostMapping("/addCar")
    @ResponseBody
    public Result addCar(@RequestBody ShareCar shareCar) {
        if(Objects.isNull(shareCar)){
            return ResultUtils.fail();
        }
        shareCar.setTypeId(1);
        shareCar.setIsDel(DBStatusEnums.N.getKey());
        shareCarService.insert(shareCar);
        return ResultUtils.success();
    }

    @PostMapping("/updateCar")
    @ResponseBody
    public Result updateCar(@RequestBody ShareCar shareCar) {
        Result fail = ResultUtils.fail();
        if(Objects.isNull(shareCar)){
            fail.setMsg("传入参数为空");
            return fail;
        }
        Integer id = shareCar.getId();
        if(Objects.isNull(id)){
            fail.setMsg("传入参数为空");
            return fail;
        }
        shareCarService.update(shareCar);
        return ResultUtils.success();
    }



    @PostMapping("/carDetails")
    @ResponseBody
    public Result<ShareCar> carDetails(Integer id) {
        if(Objects.isNull(id)){
            return ResultUtils.fail();
        }
        ShareCar shareCar = shareCarService.queryById(id);
        if(Objects.isNull(shareCar)){
            Result fail = ResultUtils.fail();
            fail.setMsg("查询不到数据");
            return fail;
        }
        Result success = ResultUtils.success();
        success.setData(shareCar);
        return success;
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

    @PostMapping("/upload")
    @ResponseBody
    public Result upload(HttpServletRequest request){
//        return uploadService.uploadFile(name,type,file,size);
        return null;
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