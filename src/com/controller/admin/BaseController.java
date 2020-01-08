package com.controller.admin;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.exception.AdminLoginNoException;
@Controller
public class BaseController {
	/**
	 * ��¼Ȩ�޿��ƣ�������ִ��ǰִ�и÷���
	 * @throws AdminLoginNoException 
	 */
	//是否登录
	@ModelAttribute  
    public void isLogin(HttpSession session, HttpServletRequest request) throws AdminLoginNoException {      
       if(session.getAttribute("username") == null){  
            throw new AdminLoginNoException("未登录");
       }  
    } 
}
