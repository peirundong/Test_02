package service.HxCompanyRecruitService;

import dao.HxCompanyRecruitDao.HxCompanyRecruitMapper;
import org.springframework.stereotype.Service;
import pojo.HxCompanyRecruit;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 东魏 on 2017/12/5.
 */
@Service
public class HxCompanyRecruitServceImpl implements HxCompanyRecruitServce {
    @Resource
    private HxCompanyRecruitMapper hxCompanyRecruitMapper;
    public int AddhxCompanyRecruit(HxCompanyRecruit hxCompanyRecruit){
        return hxCompanyRecruitMapper.AddhxCompanyRecruit(hxCompanyRecruit);
    }
    public HxCompanyRecruit getcompanyid(String id) {
        return hxCompanyRecruitMapper.getcompanyid(id);
    }

    public List<HxCompanyRecruit> showAllFailInfo(Integer pageindex,Integer comanyid, Integer pageSize, int valuename) {
        return hxCompanyRecruitMapper.showAllFailInfo(pageindex,comanyid,pageSize,valuename);
    }

    public Integer getAllFailInfoCount(int valuename,Integer comanyid) {
        return hxCompanyRecruitMapper.getAllFailInfoCount(valuename,comanyid);
    }


    public int delAFailedJobById(int recruitid) {
        return hxCompanyRecruitMapper.delAFailedJobById(recruitid);
    }

    public int delASuccessedJobById(int recruitid) {
        return hxCompanyRecruitMapper.delASuccessedJobById(recruitid);
    }
}
