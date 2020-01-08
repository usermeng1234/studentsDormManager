package com.exception;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.po.AdminUser;

public class MyExceptionHandler implements HandlerExceptionResolver {
	@Override
	public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
	   	Map<String, Object> model = new HashMap<String, Object>();  
        model.put("ex", arg3); 
       
       if(arg3 instanceof AdminLoginNoException){
        	
        	arg0.setAttribute("adminUser", new AdminUser());
        	arg0.setAttribute("msg", "用户未登录");
        	return new ModelAndView("/admin/login", model);
        
       }else{  
        	return new ModelAndView("/error/error", model);  
        }  
	}
}
