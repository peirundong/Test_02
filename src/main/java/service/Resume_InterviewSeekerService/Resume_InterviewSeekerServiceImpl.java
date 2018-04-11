package service.Resume_InterviewSeekerService;

import dao.Resume_InterviewSeekerMapper.Resume_InterviewSeekerMapper;
import org.springframework.stereotype.Service;
import pojo.HxResume;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lalala on 2017/12/2.
 */
@Service
public class Resume_InterviewSeekerServiceImpl implements Resume_InterviewSeekerService {
    @Resource
    private Resume_InterviewSeekerMapper rsMapper ;

    public int getAllCount(Integer seekerid, Integer statusid) {
        return rsMapper.getAllCount(seekerid,statusid);
    }

    public List<HxResume> showBySeekerId(Integer pageindex, Integer pageSize, Integer seekerid, Integer statusid) {
        return rsMapper.showBySeekerIdAndStatusid(pageindex,pageSize,seekerid,statusid);
    }

}
