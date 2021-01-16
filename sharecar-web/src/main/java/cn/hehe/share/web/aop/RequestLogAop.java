package cn.hehe.share.web.aop;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2021-01-16 14:00
 **/
@Aspect
@Component
@Slf4j
public class RequestLogAop {

    public RequestLogAop() {
    }

    @Pointcut("execution(* cn.hehe.share.web.*.*(..))")
    public void webLog() {
    }

    @Before("webLog()")
    public void printRequest(JoinPoint point) throws Exception {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        log.info("========================================== Start ==========================================");
        //打印请求参数相关日志
        // 打印请求 url
        log.info("url:{}", request.getRequestURI().toString());
        // 打印 Http method
        log.info("HTTP Method:{}", request.getMethod());
        // 打印调用 controller 的全路径以及执行方法
        log.info("Class Method:{}.{}", point.getSignature().getDeclaringTypeName(), point.getSignature().getName());
        // 打印请求的 IP
        log.info("IP :{}", request.getRemoteAddr());
        // 打印请求入参
        try {
            log.info("Request Args:{}", new ObjectMapper().writeValueAsString(point.getArgs()));
        } catch (JsonProcessingException e) {
//            e.printStackTrace();
        }
    }

    /**
     * 在切入点之后执行
     */
    @After("webLog()")
    public void doAfter() {
        log.info("========================================== end ==========================================");
    }

    @Around("webLog()")
    public Object doAroud(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        try {
            long startTime = System.currentTimeMillis();
            Object result = proceedingJoinPoint.proceed();
            //打印出参
            log.info("Response Args : {}", new ObjectMapper().writeValueAsString(result));
            // 执行耗时
            log.info("Time-Consuming : {} ms", System.currentTimeMillis() - startTime);
            return result;
        } catch (Throwable throwable) {
//            throwable.printStackTrace();
        }
        return null;
    }

}
