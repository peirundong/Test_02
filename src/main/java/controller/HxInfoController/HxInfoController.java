package controller.HxInfoController;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxSeeker;
import pojo.Hxinfo;
import service.HxInfoService.HxInfoService;

import javax.annotation.Resource;

/**
 * Created by 10892 on 17.11.3.
 */
@Controller
@RequestMapping("/sys")
public class HxInfoController {
    private Logger logger = Logger.getLogger(HxInfoController.class);

    @Resource
    private HxInfoService hxInfoService;

    @RequestMapping("/Recruit_Info.html")
    public ModelAndView zhaopin() {
        ModelAndView modelAndView = new ModelAndView();
        Hxinfo Hxinfo = hxInfoService.getRecruitbyId(1);
        System.out.println(Hxinfo);
        modelAndView.addObject("Hxinfo", Hxinfo);
        HxSeeker seeker = new HxSeeker();
        seeker.setSeekerid(22);
        modelAndView.addObject("seeker", seeker);
        modelAndView.setViewName("Recruit_Info");
        return modelAndView;
    }

    @RequestMapping("/Company_Introduction.html")
    public ModelAndView gongsixiangqi(@Param("companyid") Integer companyid) {
        System.out.println(companyid);
        ModelAndView modelAndView = new ModelAndView();
        Hxinfo hxinfo1 = hxInfoService.getCompanybyId(companyid);
        modelAndView.addObject("hxinfo1", hxinfo1);
        modelAndView.setViewName("Company_Introduction");
        return modelAndView;
    }
}
