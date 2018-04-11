package service.ResumeOfCompanyService;

import dao.HxResumeOfCompanyDao.ResumeOfCompanyMapper;
import org.springframework.stereotype.Service;
import pojo.HxResumeOfCompany;

import javax.annotation.Resource;

/**
 * Created by lalala on 2017/12/2.
 */
@Service
public class ResumeOfCompanyServiceImpl implements ResumeOfCompanyService{
    @Resource
    private ResumeOfCompanyMapper resumeOfCompanyMapper;

    public HxResumeOfCompany yanzheng(String companyid, String resumeid) {
        return resumeOfCompanyMapper.yanzheng(companyid,resumeid);
    }

    public int xinzeng(String companyid, String resumeid) {
        return resumeOfCompanyMapper.xinzeng(companyid,resumeid);
    }

}
