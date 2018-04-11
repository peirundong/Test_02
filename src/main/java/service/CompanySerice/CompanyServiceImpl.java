package service.CompanySerice;

import dao.CompanyDao.CompanyMapper;
import org.springframework.stereotype.Service;
import pojo.HxArea;
import pojo.HxCompany;
import pojo.HxCompanyRecruit;
import pojo.HxIndustry;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Aaron on 2017/12/4.
 * 公司service
 */

@Service
public class CompanyServiceImpl implements CompanyService{

    @Resource
    private CompanyMapper companyMapper;

    /**
     * 登陆
     * @param companyaccount
     * @param companypwd
     * @return
     */
    public HxCompany login(String companyaccount, String companypwd) {
        HxCompany hxCompany=companyMapper.getCompanyLogin(companyaccount);
        if (hxCompany.getCompanypwd().equals(companypwd)){
            return hxCompany;
        }else {
            return null;
        }
    }
    /**
     * 注册
     * @param hxCompany
     * @return
     */
    public int registerCompany(HxCompany hxCompany) {
        return companyMapper.addCompany(hxCompany);
    }


//    public List<HxCompanyRecruit> showAllRecruit(String Companyaccount) {
//        return companyMapper.selectAllRecruitByCompanyAccount(Companyaccount);
//    }

    public int showCount(String Companyaccount) {
        return companyMapper.selectCountByCompanyAccount(Companyaccount);
    }


    public List<HxArea> getlist(String id) {
        return companyMapper.getlist(id);
    }

    public List<HxIndustry> getHxIndustryListByParentId(int id) {
        return companyMapper.getIndustry(id);
    }

    public List<HxCompanyRecruit> showAllRecruitBycompanyNameAndHxAreaAndIndustry(int Companyid, Integer cat3, Integer cat5) {
        return companyMapper.selectAllRecruitByCompanyAccount(Companyid,cat3,cat5);
    }

    public String qureyPhone(String companyphone) {
        if(companyMapper.selectPhone(companyphone)>0) {
            return "0";
        }else{
            return "1";
        }
    }
}
