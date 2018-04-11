package service.HxInfoService;

import dao.HxInfoDao.HxInfoMapper;
import org.springframework.stereotype.Service;
import pojo.Hxinfo;

import javax.annotation.Resource;

/**
 * Created by lalala on 2017/12/2.
 */
@Service
public class HxInfoServiceImpl implements HxInfoService {
    @Resource
    private HxInfoMapper hxInfoMapper ;

    public Hxinfo getRecruitbyId(Integer recruitid)
    {
        return hxInfoMapper.getRecruitbyId(recruitid);
    };

    public Hxinfo getCompanybyId(Integer companyid){
        return hxInfoMapper.getCompanybyId(companyid);
    }

}
