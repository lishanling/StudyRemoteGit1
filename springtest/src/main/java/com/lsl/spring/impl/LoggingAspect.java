package com.lsl.spring.impl;

import java.util.Arrays;

import org.apache.logging.log4j.LogManager;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component("loggingAspect")
@Aspect
public class LoggingAspect {
	@Before("execution(* com.lsl.spring..*.*(..))")
	public void beforeMethod(JoinPoint joinPoint){
		String methodName=joinPoint.getSignature().getName();
		Object[] args=joinPoint.getArgs();
		LogManager.getLogger().debug(String.format("开始执行%s方法，传入参数%s",methodName,Arrays.toString(args)));
	}
   
}
