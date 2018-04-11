package controller.ResumeController;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxCompany;
import pojo.HxResume;
import service.ResumeService.ResumeService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 10892 on 17.11.3.
 */
@Controller
@RequestMapping("/sys")
public class ResumeController {
    private Logger logger = Logger.getLogger(ResumeController.class);

    @Resource
    private ResumeService resumeService;

    @RequestMapping("/Todo_Resume.html")
    public String dai(HttpSession session) {
        HxCompany company=(HxCompany) session.getAttribute("hxCompany");
        List<HxResume> resumeList = resumeService.show(company.getCompanyid());
        session.setAttribute("resumeList", resumeList);
        return "Todo_Resume";
    }

    @RequestMapping("/Resume_InterviewCompany.html")
    public String tongzhi(HttpSession session) {
        HxCompany company=(HxCompany) session.getAttribute("hxCompany");
        List<HxResume> resumeList = resumeService.showBy(company.getCompanyid());
        session.setAttribute("resumeList", resumeList);
        return "Resume_InterviewCompany";
    }

    @RequestMapping("/resume.html")
    public String searchBy(HttpSession session, @RequestParam(value = "educationid" ,defaultValue = "0") Integer educationid,
                           @RequestParam(value = "workexperience" ,defaultValue = "") Integer workexperience){
        HxCompany company=(HxCompany) session.getAttribute("hxCompany");
        List<HxResume> resumeList = resumeService.getAllBy(workexperience,educationid,1,company.getCompanyid());
        session.setAttribute("resumeList",resumeList);
        if(resumeList.size()!=0){
            return "Resume_Buy";
        }else{
            return "index";
        }
    }
    @RequestMapping("/particulars.html")
    public ModelAndView particulars(@RequestParam(value = "resumeid") Integer resumeid){
        ModelAndView modelAndView=new ModelAndView();
        HxResume hxResume=resumeService.getAllById(resumeid);
        modelAndView.addObject("hxResume",hxResume);
        modelAndView.setViewName("Resume_Info");
        return modelAndView;
    }
}
