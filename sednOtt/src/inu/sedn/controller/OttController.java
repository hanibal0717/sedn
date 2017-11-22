package inu.sedn.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import inu.sedn.dao.OttDAO;

@Controller
public class OttController {
	OttDAO dao;
	public void setDao(OttDAO dao) {
		this.dao = dao;
	}
	
	
	@RequestMapping("/STB/monitering.do")
	public String monitering(){
		
		return "/OTT/monitering.sedn";
	}

	@RequestMapping("/STB/log.do")
	public String ottLog(Model model){
		int numTotalContents=dao.countVods();
		model.addAttribute("numTotalContents",numTotalContents);
		int numTotalSTBs=dao.countSTBs();
		model.addAttribute("numTotalSTBs", numTotalSTBs);
		return "/OTT/log.sedn";
	}
	@RequestMapping("/STB/statStatus.do")
	@ResponseBody
	public String statStatus(ModelMap mav,HttpServletRequest request, HttpServletResponse response) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		Map<String, Object> connectionRes = dao.connectionStat();
		result.put("connected", connectionRes.get("CONNECTED"));
    	result.put("disconnected", connectionRes.get("DISCONNECTED"));
    	mav.put("stat",result);
    	ObjectMapper om = new ObjectMapper();
    	System.out.println(om.writeValueAsString(mav));
    	return om.writeValueAsString(mav);
	}
	
	@RequestMapping("/STB/schedule.do")
	public String ottSchedule() throws Exception{
		
		return "/OTT/schedule.sedn";
	}
	@RequestMapping("/STB/setting.do")
	public String ottSetting(List<?> rtn){
		
		return "/OTT/setting.sedn";
	}

	
}
