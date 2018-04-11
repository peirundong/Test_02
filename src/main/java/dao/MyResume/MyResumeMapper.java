package dao.MyResume;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxResume;

import java.util.List;

/**
 * Created by 10892 on 17.11.3.
 */
@Repository
public interface MyResumeMapper {
    List<HxResume> showBySeekerId(@Param("pageindex") Integer pageindex, @Param("pageSize") Integer pageSize, @Param("seekerid") Integer seekerid);

    Integer getAllCount(@Param("seekerid") Integer seekerid);

    Integer DeByResumeid(@Param("resumeid") Integer resumeid);
}
