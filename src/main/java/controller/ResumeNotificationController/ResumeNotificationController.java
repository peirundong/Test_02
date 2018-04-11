package controller.ResumeNotificationController;

import controller.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxResumeNotification;
import service.HxResumeNotificationService.ResumeNotificationService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Nano on 2017/12/7.
 */
@Controller
@RequestMapping("/sys")
public class ResumeNotificationController {
    @Resource
    private ResumeNotificationService notificationService;
    /**
     * 查询所有已通过审核的招聘信息
     */
    @RequestMapping("/resumeNotification.html")
    public ModelAndView showAllResumeNotificationInfo(@RequestParam("seekerid") int seekerid) {
        ModelAndView modelAndView = new ModelAndView();
        List<HxResumeNotification> resumeNotificationList= null;
        try {
            resumeNotificationList = notificationService.showAllResumeNotificationInfo(seekerid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        modelAndView.addObject("resumeNotificationList", resumeNotificationList);
        modelAndView.setViewName("Resume_Notification");
        return modelAndView;
    }
}
