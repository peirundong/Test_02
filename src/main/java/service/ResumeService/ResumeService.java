package service.ResumeService;

import pojo.HxResume;

import java.util.List;

/**
 * Created by lalala on 2017/12/2.
 */
public interface ResumeService {
    List<HxResume> show(Integer companyid);

    List<HxResume> showBy(Integer companyid);

    HxResume getresumeid(String id);

    List<HxResume> getAllResume();

    List<HxResume> getAllBy(Integer workexperience, Integer educationid, Integer statusid,Integer getCompanyid);

    HxResume getAllById(Integer resumeid);

}
