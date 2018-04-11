package controller.MyResume;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxResume;
import pojo.HxSeeker;
import service.MyResumeService.MyResumeService;
import service.Resume_InterviewSeekerService.Resume_InterviewSeekerService;
import tools.PageSupport;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lalala on 2017/12/4.
 */
@Controller
@RequestMapping("/sys")
public class MyResume {
    private Logger logger = Logger.getLogger(MyResume.class);

    @Resource
    private MyResumeService myResumeService;

    @Resource
    private Resume_InterviewSeekerService resume_interviewSeekerService;

    int pageSize = 5;
    int totalCount =0;
    PageSupport pageSupport = new PageSupport();



    @RequestMapping("/Resume/MyResume.html")
    public ModelAndView MyResume(@RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex,HttpSession session) {
        HxSeeker hxSeeker = (HxSeeker) session.getAttribute("hxSeeker");
        Integer seekerid = hxSeeker.getSeekerid();
        System.out.println(seekerid);
        totalCount = myResumeService.getAllCount(seekerid);
        pageSupport.setCurrentPageNo(pageIndex);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);
      /*当前页码最大为总页数*/
        if(pageSupport.getCurrentPageNo()>pageSupport.getTotalPageCount()){
            pageSupport.setCurrentPageNo(pageSupport.getTotalPageCount());
        }
        List<HxResume> resumeList = null;
        try {
            resumeList = myResumeService.showBySeekerId((pageSupport.getCurrentPageNo() - 1) * pageSize, pageSize,seekerid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ModelAndView modelAndView = new ModelAndView();
        session.setAttribute("totalPageCount", pageSupport.getTotalPageCount());
        session.setAttribute("currentPageNo", pageSupport.getCurrentPageNo());
        session.setAttribute("totalCount", totalCount);
        modelAndView.addObject("resumeList", resumeList);
        modelAndView.setViewName("Resume_List");

        return modelAndView;
    }

    @RequestMapping(value = "/Resume/MyResumeDe.json", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, String> MyResumeDe(@RequestParam(value = "resumeid") String resumeid) {
        int result = 0;
        Map<String, String> map=new HashMap<String, String>();
        result = myResumeService.DeByResumeid(Integer.parseInt(resumeid));
        if (result > 0) {
           map.put("delResult","1");
        }else {
            map.put("delResult","-1");
        }

        return map;
    }

    @RequestMapping("/Resume/Resume_InterviewSeeker.html")
    public ModelAndView Resume_InterviewSeeker(@RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex,HttpSession session) {
        HxSeeker hxSeeker = (HxSeeker) session.getAttribute("hxSeeker");
        Integer seekerid = hxSeeker.getSeekerid();
        System.out.println(seekerid);
        totalCount = resume_interviewSeekerService.getAllCount(seekerid,1);
        pageSupport.setCurrentPageNo(pageIndex);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);
      /*当前页码最大为总页数*/
        if(pageSupport.getCurrentPageNo()>pageSupport.getTotalPageCount()){
            pageSupport.setCurrentPageNo(pageSupport.getTotalPageCount());
        }
        List<HxResume> resumeList = null;
        try {
            resumeList = resume_interviewSeekerService.showBySeekerId((pageSupport.getCurrentPageNo() - 1) * pageSize,pageSize,seekerid,1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ModelAndView modelAndView = new ModelAndView();
        session.setAttribute("totalPageCount", pageSupport.getTotalPageCount());
        session.setAttribute("currentPageNo", pageSupport.getCurrentPageNo());
        session.setAttribute("totalCount", totalCount);
        modelAndView.addObject("resumeList", resumeList);
        modelAndView.setViewName("Resume_InterviewSeeker");
        return modelAndView;
    }
}
