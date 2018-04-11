package service.Resume_InterviewSeekerService;

import pojo.HxResume;

import java.util.List;

/**
 * Created by lalala on 2017/12/2.
 */
public interface Resume_InterviewSeekerService {
    List<HxResume> showBySeekerId(Integer pageindex, Integer pageSize, Integer seekerid, Integer statusid);

    int getAllCount(Integer seekerid, Integer statusid);
}