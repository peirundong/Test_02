package service.CompanySerice;

import pojo.HxArea;
import pojo.HxCompany;
import pojo.HxCompanyRecruit;
import pojo.HxIndustry;

import java.util.List;

/**
 * Created by Aaron on 2017/12/4.
 */
public interface CompanyService {
    /**
     * 登陆
     * @param companyaccount
     * @param companypwd
     * @return
     */
    HxCompany login(String companyaccount, String companypwd);

    /**
     * 注册
     * @param hxCompany
     * @return
     */
    int registerCompany(HxCompany hxCompany);

    /**
     * 查询列表
     * @param getCompanyaccount
     * @return
     */
//    List<HxCompanyRecruit> showAllRecruit(String getCompanyaccount);

    /**
     * 查询条数
     * @param Companyaccount
     * @return
     */
    int showCount(String Companyaccount);

    /**
     * 三级联动查询
     * @param id
     * @return
     */

    List<HxArea> getlist(String id);


    List<HxIndustry> getHxIndustryListByParentId(int i);

    List<HxCompanyRecruit> showAllRecruitBycompanyNameAndHxAreaAndIndustry(int Companyid, Integer cat3, Integer cat5);

    String qureyPhone(String companyphone);
}
