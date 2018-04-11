package service.MyResumeService;

import pojo.HxResume;

import java.util.List;

/**
 * Created by lalala on 2017/12/2.
 */
public interface MyResumeService {
    List<HxResume> showBySeekerId(Integer pageindex, Integer pageSize, Integer seekerid);

    Integer DeByResumeid(Integer resumeid);

    Integer getAllCount(Integer seekerid);
}
