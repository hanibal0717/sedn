package inu.sedn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import inu.sedn.dao.BoardDAO;

@Controller
public class BoardController {
	BoardDAO dao;
	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/inuBoard.do")
	public String inuBoard(@RequestParam String BdStyle,Model model){
		String returnUrl="";
		 switch (BdStyle) {
	      case "Qa":returnUrl="/HNBAP/boardQa.sedn";break;
	      case "Ns":returnUrl="/HNBAP/boardNs.sedn";break;
	      case "Gl":returnUrl="/HNBAP/boardGl.sedn";break;
	      default:returnUrl="/sedn/error404.view";break;
	    }
		return returnUrl;
	}
	
	@RequestMapping("/board.do")
	public String board(){
	
		return "/HNBAP/board.sedn";
	}
	@RequestMapping("/page.do")
	public String page(){
	
		return "/HNBAP/page.sedn";
	}
}
