package cn.hehe.share.web.controller;

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

    @RequestMapping("/404")
    public String error404(){
        return "error/404";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/portal")
    public String protal(){
        return "portal/portal";
    }

    @RequestMapping("/carDetail")
    public String carDetail(){
        return "portal/detail";
    }

    @RequestMapping("/personInfo")
    public String personInfo(){
        return "portal/personInfo";
    }

}
