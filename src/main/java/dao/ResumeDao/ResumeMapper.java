package dao.ResumeDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxResume;

import java.util.List;

/**
 * Created by 10892 on 17.11.3.
 */
@Repository
public interface ResumeMapper {
    List<HxResume> show(@Param("companyid") Integer companyid);

    List<HxResume> showBy(@Param("companyid") Integer companyid);

    HxResume getresumeid(@Param("seekerid") String id);

    List<HxResume> getAllResume();

    List<HxResume> getAllBy(@Param("workexperience") Integer workexperience,
                            @Param("educationid") Integer educationid,@Param("statusid") Integer statusid,
    @Param("getCompanyid")Integer getCompanyid);

    HxResume getAllById(@Param("statusid") Integer resumeid);
}
