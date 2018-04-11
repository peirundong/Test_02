package dao.CompanyDao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.HxArea;
import pojo.HxCompany;
import pojo.HxCompanyRecruit;
import pojo.HxIndustry;

import java.util.List;

/**
 * Created by Aaron on 2017/12/4.
 */
@Repository
public interface CompanyMapper {
   // 登陆
    HxCompany getCompanyLogin(@Param("companyaccount") String companyaccount);
    //注册公司
    int addCompany(HxCompany hxCompany);
    //查询公司招聘信息列表
    HxCompanyRecruit selectCompanyRecruitByCompanyId(@RequestParam("companyname") String companyname);
 //查询公司招聘信息列表
 List<HxCompanyRecruit> selectAllRecruitByCompanyAccount(@Param("Companyid") int Companyid, @Param("cat3") Integer cat3, @Param("cat5") Integer cat5);
 //查询公司招聘信息条数
 int selectCountByCompanyAccount(String companyId);


 List<HxArea> getlist(@Param("id") String id);




 List<HxIndustry> getIndustry(@Param("parentno") int parentno);

 List<HxCompanyRecruit> selectAllRecruitByCompanyNameAndAreaAndIndustry(@Param("companyname") String companyname, @Param("cat3") String cat3, @Param("cat5") String cat4);

 int selectPhone(@Param("companyphone") String companyphone);
}
