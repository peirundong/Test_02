package service.ResumeService;

import dao.ResumeDao.ResumeMapper;
import org.springframework.stereotype.Service;
import pojo.HxResume;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lalala on 2017/12/2.
 */
@Service
public class ResumeServiceImpl implements ResumeService {
    @Resource
    private ResumeMapper resumeMapper ;

    public List<HxResume> showBy(Integer companyid) {
        return resumeMapper.showBy(companyid);
    }

    public List<HxResume> show(Integer companyid) {
        return resumeMapper.show(companyid);
    }

    public HxResume getresumeid(String id) {
        return resumeMapper.getresumeid(id);
    }

    public List<HxResume> getAllBy(Integer workexperience, Integer educationid,Integer statusid,Integer getCompanyid) {
        return resumeMapper.getAllBy(workexperience,educationid,statusid,getCompanyid);
    }

    public HxResume getAllById(Integer resumeid){
        return resumeMapper.getAllById(resumeid);
    }

    public List<HxResume> getAllResume() {
        return resumeMapper.getAllResume();
    }

}
