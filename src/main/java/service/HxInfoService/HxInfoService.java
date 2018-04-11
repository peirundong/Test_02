package service.HxInfoService;

import pojo.Hxinfo;

/**
 * Created by lalala on 2017/12/2.
 */
public interface HxInfoService {

    Hxinfo getRecruitbyId(Integer recruitid);

    Hxinfo getCompanybyId(Integer companyid);

}
