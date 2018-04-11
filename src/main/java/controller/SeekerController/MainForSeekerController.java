package controller.SeekerController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxCompanyRecruit;
import service.SearchForSeekerService.SearchForSeekerService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Tonight on 2017/12/4.
 */
@Controller
@RequestMapping(value = "/sys")
public class MainForSeekerController {
    @Resource
    private SearchForSeekerService searchForSeekerService;
    List<HxCompanyRecruit> recruitList = new ArrayList<HxCompanyRecruit>();
    ModelAndView model = new ModelAndView();

    @RequestMapping(value = "/shppage.html")
    public ModelAndView shppage(){
        recruitList = searchForSeekerService.selectCR(null);
        model.addObject("recruitList",recruitList);
        model.setViewName("Seeker_HomePage");
        return model;
    }

    @RequestMapping(value = "/search",method = RequestMethod.POST)
    public ModelAndView  SouSuo(@RequestParam("kd") String kd){
        recruitList = searchForSeekerService.selectCR(kd);
        model.addObject("recruitList",recruitList);
        model.setViewName("Seeker_HomePage");
        return model;
    }

    @RequestMapping(value = "/searchA")
    public ModelAndView SouSou(@RequestParam("name") String xuanze){
        recruitList = searchForSeekerService.selectCRS(xuanze);
        model.addObject("recruitList",recruitList);
        model.setViewName("Seeker_HomePage");
        return model;
    }

}
