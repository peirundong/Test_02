package service.HxCompanyRecruitService;

import pojo.HxCompanyRecruit;

import java.util.List;

/**
 * Created by 东魏 on 2017/12/5.
 */
public interface HxCompanyRecruitServce {

    int AddhxCompanyRecruit(HxCompanyRecruit hxCompanyRecruit);

    HxCompanyRecruit getcompanyid(String id);

    List<HxCompanyRecruit> showAllFailInfo(Integer pageindex,Integer comanyid, Integer pageSize, int valuename);

    Integer getAllFailInfoCount(int valuename,Integer comanyid);

    int delAFailedJobById(int recruitid);

    int delASuccessedJobById(int recruitid);


}
