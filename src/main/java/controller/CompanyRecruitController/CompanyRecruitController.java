package controller.CompanyRecruitController;

import controller.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxCompany;
import pojo.HxCompanyRecruit;
import service.HxCompanyRecruitService.HxCompanyRecruitServce;
import tools.PageSupport;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Nano on 2017/12/4.
 */
@Controller
@RequestMapping("/sys")
public class CompanyRecruitController {
    @Resource
    private HxCompanyRecruitServce crService;
    /**
     * 查询所有未通过审核的招聘信息
     */
    @RequestMapping("/recruitmentNoPass.html")
    public ModelAndView showAllFailInfo(@RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex, HttpSession session) {
        HxCompany company=(HxCompany) session.getAttribute("hxCompany");
        int pageSize = 5;
        int totalCount = crService.getAllFailInfoCount(1,company.getCompanyid());
        PageSupport pageSupport = new PageSupport();
        pageSupport.setCurrentPageNo(pageIndex);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);
        /*当前页码最大为总页数*/
        if(pageSupport.getCurrentPageNo()>pageSupport.getTotalPageCount()){
            pageSupport.setCurrentPageNo(pageSupport.getTotalPageCount());
        }
        ModelAndView modelAndView = new ModelAndView();
        List<HxCompanyRecruit> resumeFailList= null;
        try {
            resumeFailList = crService.showAllFailInfo((pageSupport.getCurrentPageNo() - 1) * pageSize,company.getCompanyid(),pageSize,1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("totalPageCount", pageSupport.getTotalPageCount());
        session.setAttribute("currentPageNo", pageSupport.getCurrentPageNo());
        session.setAttribute("totalCount", totalCount);
        modelAndView.addObject("resumeFailList", resumeFailList);
        modelAndView.setViewName("Resume_Fail");
        return modelAndView;
    }
    /**
     * 查询所有已通过审核的招聘信息
     */
    @RequestMapping("/recruitmentPass.html")
    public ModelAndView showAllSuccessInfo(@RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex, HttpSession session) {
        HxCompany company=(HxCompany) session.getAttribute("hxCompany");
        int pageSize = 5;
        int totalCount = crService.getAllFailInfoCount(1,company.getCompanyid());
        PageSupport pageSupport = new PageSupport();
        pageSupport.setCurrentPageNo(pageIndex);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);
        /*当前页码最大为总页数*/
        if(pageSupport.getCurrentPageNo()>pageSupport.getTotalPageCount()){
            pageSupport.setCurrentPageNo(pageSupport.getTotalPageCount());
        }
        ModelAndView modelAndView = new ModelAndView();
        List<HxCompanyRecruit> resumeFailList= null;
        try {
            resumeFailList = crService.showAllFailInfo((pageSupport.getCurrentPageNo() - 1) * pageSize,company.getCompanyid(), pageSize,1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("totalPageCount", pageSupport.getTotalPageCount());
        session.setAttribute("currentPageNo", pageSupport.getCurrentPageNo());
        session.setAttribute("totalCount", totalCount);
        modelAndView.addObject("resumeFailList", resumeFailList);
        modelAndView.setViewName("Resume_Success");
        return modelAndView;
    }

    /**
     *单条删除未通过审核的招聘信息
     * */
    @RequestMapping("/delAFailedJobById.html")
    public String delAFailedJobById(@RequestParam("recruitid") int recruitid) {
        int count=0;
        count = crService.delAFailedJobById(recruitid);
        if(count>0){
            return "redirect:/sys/recruitmentNoPass.html";
        }else{
            return "Resume_Fail";
        }
    }
    /**
     *单条删除已通过审核的招聘信息
     * */
    @RequestMapping("/delASuccessedJobById.html")
    public String delASuccessedJobById(@RequestParam("recruitid") int recruitid) {
        int count=0;
        count = crService.delASuccessedJobById(recruitid);
        if(count>0){
            return "redirect:/sys/recruitmentPass.html";
        }else{
            return "Resume_Success";
        }
    }
}
