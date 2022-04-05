package me.isbobrenok.aspect;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Map;

@Aspect
@Slf4j
@Component
public record LoggingAspect(HttpServletRequest request) {
    @Pointcut("execution( public * me.isbobrenok.service.impl.*.*(..) )")
    public void callAtService() {
    }

    @Pointcut("execution(public * me.isbobrenok.controller.*.*.*(..) )")
    public void callAtControllers() {
    }

    @Pointcut("execution(public * me.isbobrenok.dto.*.*(..) )")
    public void callAtProtoConverter() {
    }

    @Before("callAtControllers()")
    public void beforeCallControllers() {
        Map<String, String[]> map = request.getParameterMap();
        StringBuilder stringBuilder = new StringBuilder();
        for (Map.Entry<String, String[]> entry : map.entrySet()) {
            stringBuilder.append(entry.getKey())
                    .append(Arrays.toString(entry.getValue()));
        }
        if (stringBuilder.length() != 0) {
            log.info("Request {} on URL: {} with parameters {}", request.getMethod(), request.getRequestURI(), stringBuilder.toString());

        } else {
            log.info("Request {} on URL:{}", request.getMethod(), request.getRequestURI());
        }
    }

    @Before("callAtService()")
    public void beforeCallService(JoinPoint joinPoint) {
        log.info("In method {} with parameters: {}!", joinPoint.getSignature().getName(), joinPoint.getArgs());
    }

    @After("callAtService()")
    public void afterCallService(JoinPoint joinPoint) {
        log.info("Finished method {}().", joinPoint.getSignature().getName());
    }

    @AfterReturning(value = "callAtService()", returning = "result")
    public void afterReturningCallAtServiceMethods(Object result) {
        log.info("Result: {}", result);
    }

    @AfterThrowing(pointcut = "callAtControllers()||callAtService()", throwing = "exception")
    public void afterThrowingCallAtServiceMethods(Throwable exception) {
        log.warn("Exception: {}", exception.getLocalizedMessage());
    }

}
