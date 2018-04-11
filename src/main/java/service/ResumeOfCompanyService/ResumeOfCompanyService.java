package service.ResumeOfCompanyService;

import pojo.HxResumeOfCompany;

/**
 * Created by lalala on 2017/12/2.
 */
public interface ResumeOfCompanyService {

    HxResumeOfCompany yanzheng(String companyid, String resumeid);

    int xinzeng(String companyid, String resumeid);
}
