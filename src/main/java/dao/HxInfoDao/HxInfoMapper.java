package dao.HxInfoDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.Hxinfo;

/**
 * Created by 10892 on 17.11.3.
 */
@Repository
public interface HxInfoMapper {
    Hxinfo getRecruitbyId(@Param("recruitid") Integer recruitid);
    Hxinfo getCompanybyId(@Param("companyid") Integer companyid);
}
