package service.MyResumeService;

import dao.MyResume.MyResumeMapper;
import org.springframework.stereotype.Service;
import pojo.HxResume;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lalala on 2017/12/2.
 */
@Service
public class MyResumServiceImpl implements MyResumeService {
    @Resource
    private MyResumeMapper myResumeMapper ;

    public List<HxResume> showBySeekerId(Integer pageindex, Integer pageSize, Integer seekerid) {
        return myResumeMapper.showBySeekerId(pageindex,pageSize,seekerid);
    }

    public Integer DeByResumeid(Integer resumeid) {
        return myResumeMapper.DeByResumeid(resumeid);
    }

    public Integer getAllCount(Integer seekerid) {
        return myResumeMapper.getAllCount(seekerid);
    }
}
