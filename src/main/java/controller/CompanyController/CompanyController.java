package controller.CompanyController;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxArea;
import pojo.HxCompany;
import pojo.HxCompanyRecruit;
import pojo.HxIndustry;
import service.CompanySerice.CompanyService;
import tools.SecurityUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by Aaron on 2017/12/4.
 */
@Controller
@RequestMapping("/sys")
public class CompanyController {
    private Logger logger= Logger.getLogger(CompanyController.class);
    @Resource
    private CompanyService companyService;

    @RequestMapping(value = "/CompanyLogin.html")
    public  String loginPage(){
        return "Company_Login";
    }
    /**
     * 公司登陆
     * @param companyaccount
     * @param companypwd
     * @return
     */
    @RequestMapping(value = "/CompanyDoLogin.html",method = RequestMethod.POST)
    public ModelAndView doCompanyLogin(HttpSession session,ModelAndView modelAndView, @RequestParam String companyaccount, @RequestParam String companypwd) {
        HxCompany hxCompany = null;
        int count = 0;
        List<HxCompanyRecruit> resumeFailList = null;
        //登陆
        try {
            hxCompany = companyService.login(companyaccount, SecurityUtils.md5Hex2(companypwd));
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (hxCompany != null) {
            //成功   进入主页面
            //查询hxCompanyRecruitlist
            try {
                resumeFailList = companyService.showAllRecruitBycompanyNameAndHxAreaAndIndustry(hxCompany.getCompanyid(), null, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                count = companyService.showCount(hxCompany.getCompanyaccount());
                hxCompany.setCompanyRecruitCount(count);
            } catch (Exception e) {
                e.printStackTrace();
            }

//            List<HxArea> list=companyService.getlist("100000");
//            List<HxIndustry> positions=companyService.getHxIndustryListByParentId(0);

            List<HxArea> areas = (List<HxArea>) getlist().get(0);
            List<HxIndustry> positions = (List<HxIndustry>) getlist().get(1);
            //根据companyid 查询招聘数量
            modelAndView.addObject("positionsList", positions);
            //记录公司session
            modelAndView.addObject("hxAreasList", areas);
            session.setAttribute("hxCompany", hxCompany);
            //获取列表
            modelAndView.addObject("resumeFailList", resumeFailList);
            //返回视图
            modelAndView.setViewName("Company_HomePage");
            return modelAndView;
        } else {
            //登陆不成功
            modelAndView.setViewName("Company_Login");
            return modelAndView;
        }
    }
    public ArrayList<Object> getlist() {
        ArrayList<Object> list = new ArrayList<Object>();
        List<HxArea> areas = companyService.getlist("100000");
        List<HxIndustry> positions = companyService.getHxIndustryListByParentId(0);
        list.add(areas);
        list.add(positions);
        return list;
    }

    @RequestMapping("/getlist")
    @ResponseBody
    public List<HxArea> getlist(@RequestParam("id") String id) {
        return companyService.getlist(id);
    }

    /**
     * @param parentno
     * @return
     */
    @RequestMapping(value = {"/categorylevellist.json"}, method = {RequestMethod.GET})
    @ResponseBody
    public List<HxIndustry> getAppCategoryList(@RequestParam("parentno") int parentno) {
        List<HxIndustry> hxIndustryList = companyService.getHxIndustryListByParentId(parentno);
        System.out.println(hxIndustryList);
        return hxIndustryList;
    }

    @RequestMapping(value = "/queryList", method = RequestMethod.GET)
    public ModelAndView qureyList(HttpSession session,
                                  ModelAndView modelAndView,
                                  @RequestParam(value = "cat3", defaultValue = "null",required = false) Integer cat3,
                                  @RequestParam(value = "cat5", defaultValue = "null",required = false) Integer cat5) {
        List<HxArea> areas = (List<HxArea>) getlist().get(0);
        List<HxIndustry> positions = (List<HxIndustry>) getlist().get(1);
        HxCompany hxCompany = (HxCompany) session.getAttribute("CompanySession");
        List<HxCompanyRecruit> hxCompanyRecruits = companyService.showAllRecruitBycompanyNameAndHxAreaAndIndustry(hxCompany.getCompanyid(), cat3, cat5);
        //返回视图
        //根据companyid 查询招聘数量
        modelAndView.addObject("positionsList", positions);
        //记录公司session
        modelAndView.addObject("hxAreasList", areas);
        session.setAttribute("CompanySession", hxCompany);
        //获取列表
        modelAndView.addObject("resumeFailList", hxCompanyRecruits);
        modelAndView.setViewName("Company_HomePage");
        return modelAndView;
    }

    @RequestMapping("/yanzhengPhone")
    @ResponseBody
    public  String queryPhone(@RequestParam("companyphone")String companyphone){
        return  companyService.qureyPhone(companyphone);

    }
    /**
     * 注册
     * @return
     */
    @RequestMapping("/CompanyRegister.html")
    public String companyRegister(){
        return "Company_Register";
    }

    /**
     * 执行注册
     * @param hxCompany
     * @param modelAndView
     * @return
     */
    @RequestMapping(value = "/CompanyDoRegister.html",method = RequestMethod.POST)
    public ModelAndView doRegister(HxCompany hxCompany, ModelAndView modelAndView) {
        hxCompany.setCompanypwd(SecurityUtils.md5Hex2(hxCompany.getCompanypwd()));
        modelAndView.addObject("CompanySession", hxCompany);
        try {
            if (companyService.registerCompany(hxCompany) > 0) {
                modelAndView.setViewName("Company_HomePage");
                return modelAndView;
            } else {
                modelAndView.setViewName("Company_Register");
                return modelAndView;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return modelAndView;
    }
}
