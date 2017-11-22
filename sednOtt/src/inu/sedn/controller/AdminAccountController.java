package inu.sedn.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import inu.sedn.dao.AdminAccountDAO;
import inu.sedn.model.AdminAccountDTO;



@Controller
public class AdminAccountController {
	AdminAccountDAO dao;
	public void setDao(AdminAccountDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/login.do")
	public String login(){
		return "/sedn/login.view";
	}
	@RequestMapping("/loginProcess.do")
	@ResponseBody
	public  String loginProcess(@ModelAttribute AdminAccountDTO dto,HttpSession session)throws Exception {
			int flag=dao.loginProcess(dto.getAdmin_id(),dto.getAdmin_pass(),session);
			System.out.println(flag);
			String returnText="";
			if(flag==1){
				returnText="wrongId";
			}else if(flag==2){
				returnText="wrongPass";
			}else{
				returnText="loginSuccess";
			}
		return returnText;
		}
}
