package controller.SeekerController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.HxCollection;
import pojo.HxCompany;
import pojo.HxSeeker;
import service.SearchForSeekerService.SearchForSeekerService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Tonight on 2017/12/5.
 */
@Controller
@RequestMapping(value = "/sys")
public class CollectionInfoContrlloer {

    @Resource
    private SearchForSeekerService searchForSeekerService;

    @RequestMapping(value = "/connpage.html")
    public  String Collevtion(HttpSession session, Model model){
      // HxSeeker hxseekers = (HxSeeker)session.getAttribute("Hs");
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        List<HxCollection> hcr = searchForSeekerService.infohcr(hxSeeker.getSeekerid());
        List<List<HxCompany>> list=new ArrayList<List<HxCompany>>();

        for (HxCollection hc: hcr) {
                list.add(searchForSeekerService.infocom(hc.getCompanyid()));
        }
      /*  for (List<HxCompany> l:list){
            for (HxCompany company:l){
                System.out.println(company.getCompanyname()+"====="+company.getCompanyemail());
            }
        }*/
        model.addAttribute("companyList",list);
        return "Seeker_Collections_List";
    }


    @RequestMapping(value = ("/delcoll"), method = {RequestMethod.POST},produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public Map<String, String> getCate(@RequestParam("id") Integer id) {
        Map<String,String> map = new HashMap<String, String>();
        boolean flag = searchForSeekerService.delColl(id);
        if (flag){
            map.put("delResult","true");
            return map;
        }else{
            map.put("delResult","false");
            return map;
        }
    }
}
