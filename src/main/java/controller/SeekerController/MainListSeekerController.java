package controller.SeekerController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxCompanyRecruit;
import service.SearchForSeekerService.SearchForSeekerService;
import tools.Constants;
import tools.PageSupport;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Tonight on 2017/12/7.
 */
@Controller
@RequestMapping(value = "/sys")
public class MainListSeekerController {

    @Resource
    private SearchForSeekerService searchForSeekerService;
    List<HxCompanyRecruit> recruitList = new ArrayList<HxCompanyRecruit>();
    ModelAndView model = new ModelAndView();

   /* String xinzi = null;//薪资
    String jinyan = null;//工作经验
    String xueli = null;//学历
    String time = null;//发布时间*/

    @RequestMapping(value = "/mainlistpage.html")
    public ModelAndView listPage(@RequestParam(value = "pageIndexs",defaultValue = "1")Integer pageIndex,HttpSession session
                                 /*@RequestParam(value = "zhiweis",defaultValue = "") String zhiweis*/) {
        try {
            this.Page(pageIndex, null, null, null, null, session);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.setViewName("Seeker_ListPage");
        return model;

    }

    @RequestMapping(value = "/pagesearch",method = RequestMethod.POST)
    public ModelAndView search(@RequestParam(value = "zhiweis") String zhiweis,HttpSession session,
                         @RequestParam(value = "pageIndexs",defaultValue = "1")Integer pageIndex){
        try {
            this.Page(pageIndex, zhiweis, null, null, null, session);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.setViewName("Seeker_ListPage");
        return model;
       /* return "redirect:/sys/mainlistpage.html?zhiweis="+zhiweis;*/
    }

    @RequestMapping(value = "/xinziss")
    public ModelAndView xinzi(@RequestParam("name")String xinzi,HttpSession session,
                              @RequestParam(value = "pageIndexs",defaultValue = "1")Integer pageIndex){
        String newzhiwei = "";
        if (xinzi.equals("shiwuk")){
            newzhiwei = "10000-15000";
        }else  if(xinzi.equals("erk")){
            newzhiwei = "2000";
        }
        try {
            this.Page(pageIndex,null,newzhiwei,null,null,session);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.setViewName("Seeker_ListPage");
        return model;
    }



    @RequestMapping(value = "/xuelis")
    public ModelAndView xueli(@RequestParam("name") String xueli,HttpSession session,
                              @RequestParam(value = "pageIndexs",defaultValue = "1")Integer pageIndex){
        Integer newxueli = 0;
        if(xueli.equals("dazhuan")){
            newxueli = 1;
        }else if(xueli.equals("benke")){
            newxueli = 2;
        }else if(xueli.equals("shuoshi")){
            newxueli = 3;
        }else if(xueli.equals("boshi")){
            newxueli = 4;
        }
        try {
            this.Page(pageIndex,null,null,newxueli,null,session);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.setViewName("Seeker_ListPage");
        return model;
    }
    /*分页方法*/
    public void Page(Integer pageIndex, String zhiwei, String xinzi, Integer xueli, String time,
                     HttpSession session){
        //设置页面容量
        int pageSize= Constants.pageSize2;
        int totalCount = 0;
        try {
            totalCount = searchForSeekerService.getSeekerCount(zhiwei);//查询行数
        } catch (Exception e) {
            e.printStackTrace();
        }
        PageSupport pageSupport = new PageSupport();
        pageSupport.setCurrentPageNo(pageIndex);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);/*总条数*/
         /*处理当前页面最大为总页数*/
        if (pageSupport.getCurrentPageNo()>pageSupport.getTotalPageCount()){
            pageSupport.setCurrentPageNo(pageSupport.getTotalPageCount());
        }
        List<HxCompanyRecruit> recruitList  = null;
        try {
            recruitList = searchForSeekerService.selectPage
                    (xinzi,xueli,time,(pageSupport.getCurrentPageNo()-1)*pageSize,pageSize,zhiwei);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addObject("recruitList",recruitList);
        session.setAttribute("totalPageCount",pageSupport.getTotalPageCount());
        session.setAttribute("totalCount",totalCount);
        session.setAttribute("currentPageNo",pageSupport.getCurrentPageNo());

    }
}
