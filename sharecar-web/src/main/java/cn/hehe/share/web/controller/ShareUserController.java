package cn.hehe.share.web.controller;

import cn.hehe.share.api.result.Result;
import cn.hehe.share.api.result.ResultUtils;
import cn.hehe.share.web.conf.ShiroDbRealm;
import cn.hehe.share.web.entity.ShareUser;
import cn.hehe.share.web.service.ShareUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

/**
 * (ShareUser)表控制层
 *
 * @author makejava
 * @since 2021-01-24 16:57:01
 */
@RestController
@RequestMapping("shareUser")
public class ShareUserController {
    /**
     * 服务对象
     */
    @Resource
    private ShareUserService shareUserService;

    @RequestMapping("/queryUser")
    public Result queryUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ShareUser user = (ShareUser) SecurityUtils.getSubject().getSession().getAttribute(ShiroDbRealm.SESSION_USER_KEY);
        if(user == null){
            return ResultUtils.fail();
        }
        Result success = ResultUtils.success();
        success.setData(user.getUsername());
        return success;
    }

    @PostMapping("/dologin")
    public Result dologin(@RequestBody ShareUser user){
        String info = loginUser(user);
        if (!"SUCC".equals(info)) {
            return ResultUtils.fail("用户不存在或密码错误");
        }else{
            return ResultUtils.success();//返回的页面
        }
    }

    @RequestMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            try{
                subject.logout();
            }catch(Exception ex){
            }
        }
        response.sendRedirect("/login");
    }

    private String loginUser(ShareUser user) {
        if (isRelogin(user)) return "SUCC"; // 如果已经登陆，无需重新登录

        return shiroLogin(user); // 调用shiro的登陆验证
    }

    private String shiroLogin(ShareUser user) {
        // 组装token，包括客户公司名称、简称、客户编号、用户名称；密码
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword().toCharArray(), null);
        token.setRememberMe(true);

        // shiro登陆验证
        try {
            SecurityUtils.getSubject().login(token);
        } catch (UnknownAccountException ex) {
            return "用户不存在或者密码错误！";
        } catch (IncorrectCredentialsException ex) {
            return "用户不存在或者密码错误！";
        } catch (AuthenticationException ex) {
            return ex.getMessage(); // 自定义报错信息
        } catch (Exception ex) {
            ex.printStackTrace();
            return "内部错误，请重试！";
        }
        return "SUCC";
    }

    private boolean isRelogin(ShareUser user) {
        Subject us = SecurityUtils.getSubject();
        if (us.isAuthenticated()) {
            return true; // 参数未改变，无需重新登录，默认为已经登录成功
        }
        return false; // 需要重新登陆
    }

}