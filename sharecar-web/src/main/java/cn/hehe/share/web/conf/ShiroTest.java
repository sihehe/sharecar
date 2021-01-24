package cn.hehe.share.web.conf;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.subject.Subject;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-24 18:04
 **/
public class ShiroTest {

    public static void main(String[] args) {
        // 工厂
        IniSecurityManagerFactory iniSecurityManagerFactory = new IniSecurityManagerFactory();
        // 实例化securityManager
        SecurityManager securityManager = iniSecurityManagerFactory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        // 获取用户
        Subject subject = SecurityUtils.getSubject();
        // 组装token
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken("","");
        // 登录鉴权
        try {
            subject.login(usernamePasswordToken);
        } catch (AuthenticationException e) {
            e.printStackTrace();
            // 失败

        }
        // 返回鉴权的结果
        subject.isAuthenticated();

        // 登出
        subject.logout();

    }
}
