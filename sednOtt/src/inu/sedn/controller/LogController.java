package inu.sedn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import inu.sedn.dao.LogDAO;

@Controller
public class LogController {
	LogDAO dao;
	public void setDao(LogDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/webLog.do")
	public String webLog(){
		return "/sedn/webLog.sedn";
	}
	
	@RequestMapping("/categoryLog.do")
	public String categoryLog(){
		return "/sedn/categoryLog.sedn";
	}
}
