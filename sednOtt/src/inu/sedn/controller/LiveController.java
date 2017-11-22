package inu.sedn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import inu.sedn.dao.LiveDAO;

@Controller
public class LiveController {
	LiveDAO dao;
	/***************
	 * 프로퍼티 셋팅 server
	 ***************/
	String webserver;
	String webserverIp;
	String mediaserver;
	String mediaserverIp;
	int pageSize;
	int blockPage;
	String webPath;
	String ftpPath;
	

	public void setWebPath(String webPath) {
		this.webPath = webPath;
	}

	public void setFtpPath(String ftpPath) {
		this.ftpPath = ftpPath;
	}

	public void setWebserver(String webserver) {
		this.webserver = webserver;
	}

	public void setWebserverIp(String webserverIp) {
		this.webserverIp = webserverIp;
	}

	public void setMediaserver(String mediaserver) {
		this.mediaserver = mediaserver;
	}

	public void setMediaserverIp(String mediaserverIp) {
		this.mediaserverIp = mediaserverIp;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	

	/***************
	 * 프로퍼티 셋팅 ftp
	 ***************/
	
	
	String mediaFtpUser;
	String mediaFtpPw;
	
	
	
	
	public void setMediaFtpUser(String mediaFtpUser) {
		this.mediaFtpUser = mediaFtpUser;
	}

	public void setMediaFtpPw(String mediaFtpPw) {
		this.mediaFtpPw = mediaFtpPw;
	}

/**********************************************************************************************/
	public void setDao(LiveDAO dao) {
		this.dao = dao;
	}
	
/*********************************************************************************************************
 * 
 * 
 * @return
 */
	@RequestMapping("/liveManager.do")
	public String liveManager(){
		return "/sedn/liveManager.sedn";
	}
	
}
