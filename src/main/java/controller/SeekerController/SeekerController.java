package controller.SeekerController;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxSeeker;
import service.SeekerService.SeekerService;
import tools.SecurityUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.sql.Date;

/**
 * Created by Aaron on 2017/12/4.
 */
@Controller
@RequestMapping("/sys")
public class SeekerController {
    private Logger logger= Logger.getLogger(SeekerController.class);
    @Resource
    private SeekerService seekerService;

    @RequestMapping("/SeekerLogin.html")
    public String loginPage() {
        return "Seeker_Login";
    }
    @RequestMapping("/SeekerRegister.html")
    public String SeekerRegister() {
        return "SeekerRegister";
    }

    /**
     * 个人登陆
     * @param seekerphone
     * @param seekerpwd
     * @return
     */
    @RequestMapping(value = "/SeekerDoLogin.html")
    public String doCompanyLogin(HttpSession session, @RequestParam String seekerphone, @RequestParam String seekerpwd) {
        HxSeeker hxSeeker=null;
        try {
            hxSeeker = seekerService.login(seekerphone, SecurityUtils.md5Hex2(seekerpwd));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(hxSeeker != null) {
            //成功   进入主页面   记录个人session
            session.setAttribute("hxSeeker",hxSeeker);
            return  "redirect:/sys/shppage.html";
        } else {
            //登陆不成功
            return  "Seeker_Login";
        }
    }
    /**
     * 执行注册
     * @param hxSeeker
     * @param modelAndView
     * @return
     */
    @RequestMapping(value = "/SeekerDoRegister.html")
    public ModelAndView doRegister(HxSeeker hxSeeker, ModelAndView modelAndView){
        hxSeeker.setSeekerregtime(new Date(System.currentTimeMillis()));
        hxSeeker.setSeekerpwd(SecurityUtils.md5Hex2(hxSeeker.getSeekerpwd()));
        int count=seekerService.registerSeeker(hxSeeker);
        if(count>0){
            modelAndView.setViewName("Seeker_Login");
            return  modelAndView;
        }else{
            modelAndView.setViewName("SeekerRegister");
            return modelAndView;
        }
    }

}