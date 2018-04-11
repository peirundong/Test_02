package controller.SeekerController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.HxSeeker;
import service.SearchForSeekerService.SearchForSeekerService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
/**
 * Created by Tonight on 2017/12/4.
 */
@Controller
@RequestMapping(value = "/sys")
public class GrForSeerkerContrlloer {
    @Resource
    private SearchForSeekerService searchForSeekerService;
    ModelAndView model = new ModelAndView();

    @RequestMapping("/jianli.html")
    public ModelAndView janLi(HttpSession session) {
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        HxSeeker reseekeinfo = searchForSeekerService.seekerInfo(hxSeeker.getSeekerid());
        model.addObject("reseekeinfo",reseekeinfo);
        model.setViewName("Seeker_Center_Main");

        return model;
    }


    @RequestMapping(value = "/updateb",method = RequestMethod.POST)
    public String UpGrInfo1(HttpSession session, @RequestParam("tel") String tel,
                            @RequestParam("email") String email,@RequestParam("names") String names){
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        boolean count = searchForSeekerService.dateb(tel,email,names,hxSeeker.getSeekerid());
        if(count){
            return "redirect:/sys/jianli.html";
        }else{
            return "Seeker_HomePage";
        }

    }

    @RequestMapping(value = "/inserta",method = RequestMethod.POST)
    public String Inserta(@RequestParam("newname")String name,@RequestParam("gender") String sex,
                          @RequestParam("newage")Integer age, @RequestParam("newemail")String email,
                          @RequestParam("radio") String oftenuse, HttpSession session){
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        int newSex=0;
        int newOftenuse = 0;
        if(sex.equals("男")){
            newSex = 0;

        }else if(sex.equals("女")){
            newSex = 1;
        }

        if (oftenuse.equals("0")){
            newOftenuse = 0;
        }else if(oftenuse.equals("1")){
            newOftenuse = 1;
        }
       // HxSeeker hxseekers = (HxSeeker)session.getAttribute("Hs");
        boolean count = false;
        try {
            count = searchForSeekerService.inserta(name,newSex,age,email,newOftenuse,hxSeeker.getSeekerid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(count){
            return "redirect:/sys/jianli.html";
        }
        return "Seeker_HomePage";

    }


    @RequestMapping(value = "/insertb",method = RequestMethod.POST)
    public String Insertb(@RequestParam("xueli") Integer xueli,@RequestParam("guoji") String guoji,
                          @RequestParam("langele") String langele, @RequestParam("jinyan") String jinyan,
                          HttpSession session){
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        Integer newXueLi = 0;
        if(xueli.equals("1")){
            newXueLi = 1;
        }else if(xueli.equals("2")){
            newXueLi = 2;
        }else if(xueli.equals("3")){
            newXueLi = 3;
        }else if(xueli.equals("4")){
            newXueLi = 4;
        }else{
            newXueLi = 5;
        }
        // HxSeeker hxseekers = (HxSeeker)session.getAttribute("Hs");
        boolean count = false;
        try {
            count = searchForSeekerService.insertb(newXueLi,guoji,langele,jinyan,hxSeeker.getSeekerid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(count){
            return "redirect:/sys/jianli.html";
          }
          return "Seeker_HomePage";

    }

    @RequestMapping(value = "/insertc",method = RequestMethod.POST)
    public String Insertc(@RequestParam("addressA") String addressA,@RequestParam("zhiwei") String zhiwei,
                          @RequestParam("xinzi") String xinzi, HttpSession session){
        // HxSeeker hxseekers = (HxSeeker)session.getAttribute("Hs");
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        Integer newAddress=0;
        try {
            newAddress = searchForSeekerService.lookAddress(addressA);
        } catch (Exception e) {
            e.printStackTrace();
        }

        boolean count = false;
        try {
            count = searchForSeekerService.insertc(newAddress,zhiwei,xinzi,hxSeeker.getSeekerid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(count){
            return "redirect:/sys/jianli.html";
        }
        return "Seeker_HomePage";

    }

    @RequestMapping(value = "/insertd",method = RequestMethod.POST)
    public String Insertd(@RequestParam("jineng")String jineng,@RequestParam("miaoshu") String miaoshu,
                          HttpSession session){
        // HxSeeker hxseekers = (HxSeeker)session.getAttribute("Hs");
        HxSeeker hxSeeker=(HxSeeker) session.getAttribute("hxSeeker");
        boolean count = false;
        try {
            count = searchForSeekerService.insertd(jineng,miaoshu,hxSeeker.getSeekerid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(count){
            return "redirect:/sys/jianli.html";
        }
        return "Seeker_HomePage";
    }




}
