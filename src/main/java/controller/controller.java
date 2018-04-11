package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 10892 on 17.11.3.
 */
@Controller
@RequestMapping("/sys")
public class controller {
    @RequestMapping("/index")
    public String index() {
        return "HomePage";
    }
    @RequestMapping("/daichuliresume.html")
    public String daichuliresume() {
        return "Todo_Resume";
    }
    @RequestMapping("/yitongzhimianshiresume.html")
    public String yitongzhimianshiresume() {
        return "Resume_InterviewCompany";
    }

    @RequestMapping("/yitongjianliliebiao.html")
    public String yitongjianliliebiao() {
        return "Resume_InterviewSeeker";
    }


    @RequestMapping("/collections.html")
    public String collections() {
        return "Seeker_Collections_List";
    }



    @RequestMapping("/index.html")
    public String zhuye() {
        return "Seeker_HomePage";
    }


}
