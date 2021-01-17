package cn.hehe.share.web.controller;

import cn.hehe.share.api.dto.CarDetailsDTO;
import cn.hehe.share.api.dto.CarListDTO;
import cn.hehe.share.api.dto.PortalCarDetailDTO;
import cn.hehe.share.api.dto.PortalCarListDTO;
import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.PortalCarListVO;
import cn.hehe.share.web.entity.ShareCar;
import cn.hehe.share.web.entity.ShareType;
import cn.hehe.share.web.service.ShareCarService;
import cn.hehe.share.web.service.ShareTypeService;
import cn.hehe.share.web.service.UploadService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
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

    @Resource
    private ShareTypeService shareTypeService;

    @Autowired
    private UploadService uploadService;



    @RequestMapping("/")
    public String carManage() {
        return "carManager/carManager";
    }

    @RequestMapping("/carManager-add")
    public String carManagerAdd() {
        return "carManager/carManager-add";
    }

    @RequestMapping("/carManager-list")
    public String carManagerList() {
        return "carManager/carManager-list";
    }

    @RequestMapping("/carManager-edit")
    public String carManagerEdit() {
        return "carManager/carManager-edit";
    }

    @RequestMapping("/carManager-details")
    public String carManagerDetails() {
        return "carManager/carManager-details";
    }


    @PostMapping("/carList")
    @ResponseBody
    public PageResp<CarListDTO> carList(Integer pageIndex, Integer pageSize, String name, String style) { //PageReq<CarListReq> req
        ShareCar shareCar = new ShareCar();
        shareCar.setName(name);
        shareCar.setStyle(style);
        shareCar.setIsDel(DBStatusEnums.N.getKey());
        PageHelper.startPage(pageIndex, pageSize);
        List<CarListDTO> shareCars = shareCarService.carList(shareCar);
        PageInfo pageInfo = new PageInfo(shareCars);
        PageResp<CarListDTO> pageResp = new PageResp(pageInfo.getTotal(),pageInfo.getList());
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
    public Result<CarDetailsDTO> carDetails(Integer id) {
       return shareCarService.carDetails(id);

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

    @PostMapping("/typeList")
    @ResponseBody
    public Result<List<ShareType>> typeList() {
        List<ShareType> shareTypeList = shareTypeService.typeList();
        Result result = ResultUtils.success();
        result.setData(shareTypeList);
        return result;
    }

    @PostMapping("/upload")
    @ResponseBody
    public Result upload(MultipartFile file, HttpServletRequest request){
        return uploadService.uploadFile(file);
    }

    @PostMapping("/portalCarList")
    @ResponseBody
    public Result<PageResp<PortalCarListDTO>> portalCarList(@RequestBody PortalCarListVO portalCarListVO){
        PageInfo<ShareCar> shareCarPageInfo = shareCarService.portalCarList(portalCarListVO);
        List<PortalCarListDTO> portalCarListDTOList = new ArrayList<>();
        List<ShareCar> shareCarList = shareCarPageInfo.getList();
        if(!CollectionUtils.isEmpty(shareCarList)){
            for (ShareCar shareCar : shareCarList) {
                PortalCarListDTO portalCarListDTO = new PortalCarListDTO();
                portalCarListDTO.setCarName(shareCar.getName());
                portalCarListDTO.setRegion(shareCar.getRegion());
                portalCarListDTO.setFuelType(shareCar.getFuelType());
                portalCarListDTO.setSeats(shareCar.getSeats());
                portalCarListDTO.setCashPledge(shareCar.getCashPledge());
                portalCarListDTO.setCarId(shareCar.getId());
                String imageInfo = shareCar.getImageInfo();
                if(!StringUtils.isEmpty(imageInfo)){
                    String[] split1 = imageInfo.split(",");
                    portalCarListDTO.setImage(split1[0]);
                }
                portalCarListDTOList.add(portalCarListDTO);
            }
        }
        PageResp<PortalCarListDTO> pageResp = new PageResp(shareCarPageInfo.getTotal(),portalCarListDTOList);
        Result<PageResp<PortalCarListDTO>> success = ResultUtils.success();
        success.setData(pageResp);
        return success;
    }

    @GetMapping("/portalCarDetail")
    @ResponseBody
    public Result<PortalCarDetailDTO> portalCarDetail(Integer id){
        PortalCarDetailDTO portalCarDetailDTO = shareCarService.portalCarDetail(id);
        Result success = ResultUtils.success();
        success.setData(portalCarDetailDTO);
        return success;
    }

}