package dao.Resume_InterviewSeekerMapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxResume;

import java.util.List;

/**
 * Created by 10892 on 17.11.3.
 */
@Repository
public interface Resume_InterviewSeekerMapper {
    List<HxResume> showBySeekerIdAndStatusid(@Param("pageindex") Integer pageindex, @Param("pageSize") Integer pageSize, @Param("seekerid") Integer seekerid, @Param("statusid") Integer statusid);

    int getAllCount(@Param("seekerid") Integer seekerid, @Param("statusid") Integer statusid);
}
