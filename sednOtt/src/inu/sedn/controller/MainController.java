package inu.sedn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/error.do")
	public String error404(){
		return "/sedn/error404.view";
	}
	
	
	
	@RequestMapping("/index.do")
	public String main(){
		return "/template/index.user";
	}
	@RequestMapping("/sedn.do")
	public String text(){
		return "/sedn/main.sedn";
	}

}
