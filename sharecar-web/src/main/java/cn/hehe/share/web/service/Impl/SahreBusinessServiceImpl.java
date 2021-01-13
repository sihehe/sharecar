package cn.hehe.share.web.service.Impl;

import cn.hehe.share.api.dto.BusinessDetailsDto;
import cn.hehe.share.api.dto.BusinessListDto;
import cn.hehe.share.api.dto.PriceDetailsDTO;
import cn.hehe.share.api.enums.BuninessUntilEnums;
import cn.hehe.share.api.enums.DBStatusEnums;
import cn.hehe.share.api.page.PageResp;
import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.api.vo.ShareAddBusiness;
import cn.hehe.share.api.vo.ShareBusinessPrice;
import cn.hehe.share.api.vo.ShareUpdateBusiness;
import cn.hehe.share.web.dao.ShareBusinessDetailDao;
import cn.hehe.share.web.entity.SahreBusiness;
import cn.hehe.share.web.dao.SahreBusinessDao;
import cn.hehe.share.web.entity.ShareBusinessDetail;
import cn.hehe.share.web.service.SahreBusinessService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.*;

/**
 * (SahreBusiness)表服务实现类
 *
 * @author makejava
 * @since 2020-12-09 11:43:13
 */
@Service("sahreBusinessService")
public class SahreBusinessServiceImpl  implements SahreBusinessService {
    @Resource
    private SahreBusinessDao shareBusinessDao;

    @Resource
    private ShareBusinessDetailDao shareBusinessDetailDao;

    @Override
    public PageResp<BusinessListDto> businessList(Integer pageIndex, Integer pageSize, String name, String type) {
        PageHelper.startPage(pageIndex, pageSize);
        List<BusinessListDto> businessList = shareBusinessDao.businessList(name,type);
        for (BusinessListDto businessListDto : businessList) {
            businessListDto.setBusinessUnitStr(BuninessUntilEnums.getValue(businessListDto.getBusinessUnit()));
        }
        PageInfo pageInfo = new PageInfo(businessList);
        PageResp<BusinessListDto> pageResp = new PageResp(pageInfo.getTotal(),pageInfo.getList());
        return pageResp;
    }

    @Override
    @Transactional
    public Result delBusiness(Integer businessId) {
        SahreBusiness sahreBusiness = new SahreBusiness();
        sahreBusiness.setBusinessId(businessId);
        sahreBusiness.setBusinessStatus(DBStatusEnums.C.getKey());
        shareBusinessDao.update(sahreBusiness);
        shareBusinessDetailDao.updateByBusinessId(businessId,DBStatusEnums.Y.getKey());
        return ResultUtils.success();
    }

    @Override
    public Result<BusinessDetailsDto> businessDetails(Integer businessId) {
        SahreBusiness sahreBusiness = shareBusinessDao.queryById(businessId);
        if(Objects.isNull(sahreBusiness)){
            return ResultUtils.fail("未查询到相关套餐");
        }
        BusinessDetailsDto businessDetailsDto = new BusinessDetailsDto();
        BeanUtils.copyProperties(sahreBusiness,businessDetailsDto);
        //根据id查询detail
        ShareBusinessDetail shareBusinessDetail = new ShareBusinessDetail();
        shareBusinessDetail.setBusinessId(sahreBusiness.getBusinessId());
        shareBusinessDetail.setIsDel(DBStatusEnums.N.getKey());
        List<ShareBusinessDetail> shareBusinessDetails = shareBusinessDetailDao.queryAll(shareBusinessDetail);
        List<PriceDetailsDTO> priceDetailsDTOList = new ArrayList<>();
        for (ShareBusinessDetail businessDetail : shareBusinessDetails) {
            PriceDetailsDTO priceDetailsDTO = new PriceDetailsDTO();
            priceDetailsDTO.setId(businessDetail.getId());
            priceDetailsDTO.setCarTypeId(businessDetail.getCarType());
            priceDetailsDTO.setPrice(businessDetail.getPrice());
            priceDetailsDTO.setTimeOutPrice(businessDetail.getTimeOutPrice());
            priceDetailsDTO.setCashPledge(businessDetail.getCashPledge());
            priceDetailsDTOList.add(priceDetailsDTO);
        }
        businessDetailsDto.setPriceDetailsDTOList(priceDetailsDTOList);
        Result success = ResultUtils.success();
        success.setData(businessDetailsDto);
        return success;
    }

    @Override
    @Transactional
    public Result addBusiness(ShareAddBusiness shareAddBusiness) {

        SahreBusiness sahreBusiness = new SahreBusiness();
        sahreBusiness.setBusinessName(shareAddBusiness.getName());
        sahreBusiness.setBusinessUnit(shareAddBusiness.getBusinessUnit());
        sahreBusiness.setTimeOutUnit(shareAddBusiness.getBusinessTimeOutUnit());
        sahreBusiness.setBusinessStatus(DBStatusEnums.A.getKey());
        sahreBusiness.setCreateTime(new Date());
//        sahreBusiness.setCreateUser();
        shareBusinessDao.insert(sahreBusiness);
        List<ShareBusinessPrice> businessPriceList = shareAddBusiness.getBusinessPriceList();
        if(!CollectionUtils.isEmpty(businessPriceList)){
            for (ShareBusinessPrice shareBusinessPrice : businessPriceList) {
                insertBusinessDetail(sahreBusiness, shareBusinessPrice);
            }
        }
        return ResultUtils.success();
    }

    @Override
    public Result updateBunsiness(ShareUpdateBusiness shareUpdateBusiness) {
        // 根据id更新
        Integer businessId = shareUpdateBusiness.getBusinessId();
        SahreBusiness sahreBusiness = new SahreBusiness();
        sahreBusiness.setBusinessId(businessId);
        sahreBusiness.setBusinessName(shareUpdateBusiness.getName());
        sahreBusiness.setBusinessUnit(shareUpdateBusiness.getBusinessUnit());
        sahreBusiness.setTimeOutUnit(shareUpdateBusiness.getBusinessUnit());
        sahreBusiness.setUpdateTime(new Date());
        //sahreBusiness.setUpdateUser();
        shareBusinessDao.update(sahreBusiness);
        // 先将价格列表状态全部失效
        shareBusinessDetailDao.updateByBusinessId(businessId,DBStatusEnums.Y.getKey());
        List<ShareBusinessPrice> businessPriceList = shareUpdateBusiness.getBusinessPriceList();
        if(!CollectionUtils.isEmpty(businessPriceList)){
            for (ShareBusinessPrice shareBusinessPrice : businessPriceList) {
                Integer id = shareBusinessPrice.getId();
                if(Objects.isNull(id)){
                    insertBusinessDetail(sahreBusiness, shareBusinessPrice);
                }else{
                    ShareBusinessDetail shareBusinessDetail1 = shareBusinessDetailDao.queryById(id);
                    if(Objects.isNull(shareBusinessDetail1)){
//                  不存在 新增
                        insertBusinessDetail(sahreBusiness, shareBusinessPrice);
                    }else{
//                    存在 更新
                        updateBusinessDetail(sahreBusiness, shareBusinessPrice);
                    }
                }
            }
        }
        return ResultUtils.success();
    }

    @Override
    public PageResp<BusinessListDto> queryBusinessList(Integer pageIndex, Integer pageSize, String name, String carType) {
        PageHelper.startPage(pageIndex, pageSize);
        List<BusinessListDto> businessList = shareBusinessDao.queryBusinessList(name,carType);
        PageInfo pageInfo = new PageInfo(businessList);
        PageResp<BusinessListDto> pageResp = new PageResp(pageInfo.getTotal(),pageInfo.getList());
        return pageResp;
    }

    private void insertBusinessDetail(SahreBusiness sahreBusiness, ShareBusinessPrice shareBusinessPrice) {
        ShareBusinessDetail shareBusinessDetail = new ShareBusinessDetail();
        shareBusinessDetail.setBusinessId(sahreBusiness.getBusinessId());
        shareBusinessDetail.setCarType(shareBusinessPrice.getType());
        shareBusinessDetail.setPrice(shareBusinessPrice.getPrice());
        shareBusinessDetail.setTimeOutPrice(shareBusinessPrice.getOutTimePrice());
        shareBusinessDetail.setCashPledge(shareBusinessPrice.getCashPledge());
        shareBusinessDetail.setIsDel(DBStatusEnums.N.getKey());
        shareBusinessDetail.setCreateTime(new Date());
//                shareBusinessDetail.setCreateUser();
        shareBusinessDetailDao.insert(shareBusinessDetail);
    }

    private void updateBusinessDetail(SahreBusiness sahreBusiness, ShareBusinessPrice shareBusinessPrice) {
        ShareBusinessDetail shareBusinessDetail = new ShareBusinessDetail();
        Integer id = shareBusinessPrice.getId();
        shareBusinessDetail.setId(id);
        shareBusinessDetail.setBusinessId(sahreBusiness.getBusinessId());
        shareBusinessDetail.setCarType(shareBusinessPrice.getType());
        shareBusinessDetail.setPrice(shareBusinessPrice.getPrice());
        shareBusinessDetail.setTimeOutPrice(shareBusinessPrice.getOutTimePrice());
        shareBusinessDetail.setCashPledge(shareBusinessPrice.getCashPledge());
        shareBusinessDetail.setIsDel(DBStatusEnums.N.getKey());
        shareBusinessDetailDao.update(shareBusinessDetail);
    }
}