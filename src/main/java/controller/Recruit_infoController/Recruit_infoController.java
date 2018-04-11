package controller.Recruit_infoController;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.HxResumeOfCompany;
import service.HxCompanyRecruitService.HxCompanyRecruitServce;
import service.ResumeOfCompanyService.ResumeOfCompanyService;
import service.ResumeService.ResumeService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by 10892 on 17.11.3.
 */
@Controller
@RequestMapping("/sys")
public class Recruit_infoController {
    private Logger logger = Logger.getLogger(Recruit_infoController.class);

    @Resource
    private ResumeService resumeService;
    @Resource
    private HxCompanyRecruitServce hxCompanyRecruitServce;
    @Resource
    private ResumeOfCompanyService resumeOfCompanyService;


    @RequestMapping("/shifoutou")
    @ResponseBody
    public Map<String, String> shifoutou(@RequestParam("recruitid") String recruitid, @RequestParam("seekerid") String seekerid) {
        Map<String, String> map = new HashMap<String, String>();
        String companyid = String.valueOf(hxCompanyRecruitServce.getcompanyid(recruitid).getCompanyid());
        String resumeid = String.valueOf(resumeService.getresumeid(seekerid).getResumeid());
        HxResumeOfCompany resume = null;
        try {
            resume = resumeOfCompanyService.yanzheng(companyid, resumeid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (resume == null) {
            map.put("message", "0");
        } else {
            map.put("message", "1");
        }
        return map;

    }

    @RequestMapping("/tou")
    @ResponseBody
    public Map<String, String> tou(@RequestParam("recruitid") String recruitid, @RequestParam("seekerid") String seekerid) {
        Map<String, String> map = new HashMap<String, String>();
        String companyid = String.valueOf(hxCompanyRecruitServce.getcompanyid(recruitid).getCompanyid());
        String resumeid = String.valueOf(resumeService.getresumeid(seekerid).getResumeid());
        if (resumeOfCompanyService.xinzeng(companyid, resumeid) > 0) {
            map.put("message", "0");
        } else {
            map.put("message", "1");
        }
        return map;
    }

}
