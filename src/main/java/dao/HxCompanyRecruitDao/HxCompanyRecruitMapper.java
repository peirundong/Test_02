package dao.HxCompanyRecruitDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxCompanyRecruit;

import java.util.List;

/**
 * Created by 东魏 on 2017/12/5.
 */
@Repository
public interface HxCompanyRecruitMapper {
    int AddhxCompanyRecruit(HxCompanyRecruit hxCompanyRecruit);

    HxCompanyRecruit getcompanyid(@Param("recruitid") String id);

    List<HxCompanyRecruit> showAllFailInfo(@Param("pageindex") Integer pageindex,@Param("comanyid") Integer comanyid,
     @Param("pageSize") Integer pageSize, @Param("valuename") int valuename);

    int delAFailedJobById(@Param("recruitid")int recruitid);

    int delASuccessedJobById(@Param("recruitid")int recruitid);

    Integer getAllFailInfoCount(@Param("valuename")int valuename,@Param("comanyid") Integer comanyid);
}
