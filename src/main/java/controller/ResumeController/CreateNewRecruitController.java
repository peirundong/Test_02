package controller.ResumeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxCompanyRecruit;
import pojo.HxDictionary;
import service.DictionaryService.DictionaryService;
import service.HxCompanyRecruitService.HxCompanyRecruitServce;

import javax.annotation.Resource;

import java.sql.Date;
import java.util.List;

/**
 * Created by 东魏 on 2017/12/4.
 */
@Controller
@RequestMapping("/sys")
public class CreateNewRecruitController {
    @Resource
    private DictionaryService dictionaryService;
    @Resource
    private HxCompanyRecruitServce hxCompanyRecruitServce;
    @RequestMapping("/create.html")
    public ModelAndView Dictionary(){
        ModelAndView modelAndView = new ModelAndView();
        List<HxDictionary> dictionary=dictionaryService.selcetDictionary("学历");
        modelAndView.addObject("dictionarylist", dictionary);
        modelAndView.setViewName("CreateNewRecruit");
        return modelAndView;
    }
    @RequestMapping("/submit.html")
    public String submit(HxCompanyRecruit hxCompanyRecruit){
        List<HxDictionary> dictionary=dictionaryService.selcetDictionary("学历");
        for (HxDictionary item:dictionary) {
            if(item.getValuename().equals(hxCompanyRecruit.getValuename())){
                hxCompanyRecruit.setEducationid(item.getTypevalueid());
            }
        }
        hxCompanyRecruit.setPublishtime(new Date(System.currentTimeMillis()));
        hxCompanyRecruit.setCompanyid(1001);
        hxCompanyRecruit.setStatusid(0);
        int count=hxCompanyRecruitServce.AddhxCompanyRecruit(hxCompanyRecruit);
        if(count>0){
            return "redirect:/sys/gongsizhuye.html";
        }else{
            return "CreateNewRecruit";
        }
    }
}
