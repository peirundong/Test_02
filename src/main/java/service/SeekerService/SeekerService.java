package service.SeekerService;

import pojo.HxCompany;
import pojo.HxCompanyRecruit;
import pojo.HxSeeker;

/**
 * Created by Aaron on 2017/12/4.
 */
public interface SeekerService {
    int registerSeeker(HxSeeker hxSeeker);

    HxSeeker login(String seekerphone, String seekerpwd);

    int getInt(String phone);
}
