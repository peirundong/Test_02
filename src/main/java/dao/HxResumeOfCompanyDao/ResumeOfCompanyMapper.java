package dao.HxResumeOfCompanyDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import pojo.HxResumeOfCompany;

/**
 * Created by 10892 on 17.11.3.
 */
@Repository
public interface ResumeOfCompanyMapper {

    HxResumeOfCompany yanzheng(@Param("companyid") String companyid, @Param("resumeid") String resumeid);

    int xinzeng(@Param("companyid") String companyid, @Param("resumeid") String resumeid);
}
