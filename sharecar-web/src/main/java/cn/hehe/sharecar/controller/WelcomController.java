package cn.hehe.sharecar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-12 11:15
 **/
@Controller
public class WelcomController {

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "welcome";
    }
}
