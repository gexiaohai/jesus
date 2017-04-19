package com.ge.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ge.service.PersonService;
import com.ge.service.UserService;
import com.ge.vo.Info;
import com.ge.vo.Person;
import com.ge.vo.User;
import com.mapper.PersonMapper;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;
	
	@Resource
	private PersonService personService;
	
	//注册
	/*@ResponseBody*/
	@RequestMapping(value="/log", method=RequestMethod.POST)
	public String log(@RequestParam String userName, @RequestParam String password, @RequestParam String password1){
		if(password1.equals(password)){
			if(userName ==""||password == ""){
				return "error-log";
			}else if(userName.length()>10||password.length()>10){
				return "error-log2";
			}else{
				userService.log(userName, password);
				
				return "success-log";
			}
		}else {
			return "error";
		}
		
	}
	
	
	//登录
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(//HttpSession session,
			@RequestParam(value = "userName", required = true)String userName,
			@RequestParam(value="password") String password){
		ModelAndView mav = new ModelAndView();
		User userlogUser = userService.logUser(userName, password);
		if(userlogUser == null){
			mav.setViewName("error");
			return mav;//如果为空则返回error.jsp
		}else{
			String roleName = userlogUser.getRoleName();
			if("管理员".equals(roleName)){
				mav.addObject("user",userlogUser);//加这句的原因是：在返回的jsp页面上可以获取当前登陆的用户的信息
				mav.setViewName("root");
				return mav;
			}else if("牧师".equals(roleName)){
				mav.addObject("user",userlogUser);
				mav.setViewName("mushi");
				return mav;
			}else{
				mav.addObject("user",userlogUser);
				mav.setViewName("user");
				return mav;
			}
		}	
	}
	
	//退出登录
	@RequestMapping(value="/login/logout" ,method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	//
	@RequestMapping(value="/login/showInfo" , method = RequestMethod.GET)
	public String shoePerson(Model model){
		List<Info> plist = personService.queryPer();
		model.addAttribute("plist",plist);
		return "showInfo";
	}
	


}












