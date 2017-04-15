package com.yc.novel.aspect;

import org.apache.logging.log4j.LogManager;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import com.yc.novel.entity.Users;
import com.yc.novel.util.Encrypt;

@Component("encryptAspect")
@Aspect
public class EncryptAspect {
	@Before("execution(* com.yc.novel.service.impl.UsersServiceImpl.login(..))")
	public void beforeMethod(JoinPoint jpoint){
		Users user=(Users) jpoint.getArgs()[0];
		LogManager.getLogger().debug("对密码加密前==》"+user);
		user.setUpwd(Encrypt.md5AndSha(user.getUpwd()));
 	}
	
}
