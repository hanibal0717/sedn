package inu.sedn.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import inu.sedn.dao.VodDAO;

import inu.sedn.function.PagingUtil;
import inu.sedn.model.CategoryDTO;
import inu.sedn.model.SednDataDTO;





@Controller
public class VodController {
	private static final String CATEGORY_TYPE="Vod";
	
	
	VodDAO dao;
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

	public void setWebPath(String webPath) {
		this.webPath = webPath;
	}

	public void setFtpPath(String ftpPath) {
		this.ftpPath = ftpPath;
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
	public void setDao(VodDAO dao) {
		this.dao = dao;
	}
	
/*********************************************************************************************************
 * 
 * @return
 */
	@RequestMapping("/vodManager.do")
	public String vodManager(Model model){
		String topIdx=dao.topData();
		
		List<CategoryDTO> lists=dao.categoryLists(CATEGORY_TYPE);
		List<CategoryDTO> listsOption=dao.categoryLists(CATEGORY_TYPE);
		for(int i=0;i<listsOption.size();i++){
			listsOption.get(i).setCategoryName(dao.categoryToText(listsOption.get(i).getCategoryCode()));
		}
		model.addAttribute("topIdx",topIdx);
		model.addAttribute("lists", lists);
		model.addAttribute("optionLists", listsOption);
		model.addAttribute("mediaserverIp",mediaserverIp);
		return "/sedn/vodManager.sedn";
	}

	@RequestMapping("/dataView.do")
	public String dataView(@RequestParam String idx,Model model){
		SednDataDTO dto=dao.jasonDataView(idx);
		String metaStrPath=webPath+"/boxMeta/"+dto.getSdMetabox();
		System.out.println(metaStrPath);
		BufferedReader br = null;
		String lineStr ="";
        try {
            br = new BufferedReader(new FileReader(metaStrPath));
            String line;
            
            while ((line = br.readLine()) != null) {
            	lineStr=lineStr+"<br/>"+line;
            }
            dto.setSdMetabox(lineStr);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (br != null) {
                    br.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
		JSONObject json = new JSONObject();
			json.put("idx",dto.getIdx());
			json.put("sdCategory",dto.getSdCategory());
			json.put("sdStyle",dto.getSdStyle());
			json.put("sdCreateDate",dto.getSdCreateDate());
			json.put("sdOpenDate",dto.getSdOpenDate());
			json.put("sdVodbox",dto.getSdVodbox());
			json.put("sdImgbox",dto.getSdImgbox());
			json.put("sdLivebox",dto.getSdLivebox());
			json.put("sdMetabox",dto.getSdMetabox());
			json.put("sdFilebox",dto.getSdFilebox());
			json.put("sdTitle",dto.getSdTitle());
			json.put("sdContent",dto.getSdContent());
			json.put("sdCount",dto.getSdCount());
			json.put("sdDelflag",dto.getSdDelflag());
			json.put("parent",dto.getParent());
			json.put("depth",dto.getDepth());
			json.put("indent",dto.getIndent());

		JSONArray jsonArr = new JSONArray();
			jsonArr.add(json);
		String jsonData=jsonArr.toString();
		System.out.println(jsonData);
		model.addAttribute("jsonData",jsonData);
		return "/sedn/dataView.data";
	}
	
	@RequestMapping("/dataList.do")
	public String dataList(@RequestParam String categoryCode,
			@RequestParam(required=false) String nowPage,
			@RequestParam(required=false) String sword,
			Model model,
			HttpServletRequest req){
		if(nowPage == null) nowPage="1";
		if(sword== null) sword="";
		if(categoryCode==null) categoryCode="";
		
		int totalRecordCount = dao.getTotalRecordCount(categoryCode,sword);
		
		int totalPage=(int)Math.ceil((double)totalRecordCount/pageSize);
		int start = (Integer.parseInt(nowPage)-1)*pageSize;
		int end = blockPage;
		List<SednDataDTO> lists=dao.dataList(categoryCode,sword,start,end);
		if(lists==null){
			System.out.println("There is No Data");
		}else{
			for(int i=0;i<lists.size();i++){
				lists.get(i).setSdCategory(dao.categoryToText(lists.get(i).getSdCategory()));
			}
		}
		model.addAttribute("dataLists", lists);		
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("categoryCode", categoryCode);
		model.addAttribute("sword", sword);
		String pagingStr = 
				PagingUtil.pagingText(req,
						categoryCode,
						sword,
						totalRecordCount, 
						pageSize, 
						blockPage, 
						Integer.parseInt(nowPage),
						req.getContextPath()+"/dataList.do?");
		model.addAttribute("pagingStr", pagingStr);
		return "/sedn/dataList.data";
		
	}
	
	@RequestMapping("/uploadVod.do")
	public String uploadFile(@ModelAttribute SednDataDTO dto,HttpServletRequest req,Model model) throws Exception {
		int flag=0;
		String vodPath=webPath+"/boxVod";
		String imgPath=webPath+"/boxImg";
		String metaPath=webPath+"/boxMeta";
		
		SimpleDateFormat todayDate=new SimpleDateFormat("yyyyMMddHHmmss");
		Date nowDate=new Date();
		String formatDate=todayDate.format(nowDate);
		
		dto.setSdVodbox(formatDate+".mp4");
		
		String fileExe=dto.getVodData().getOriginalFilename().substring(dto.getVodData().getOriginalFilename().lastIndexOf(".")+1,dto.getVodData().getOriginalFilename().length());
		String originChName=dto.getSdVodbox().substring(0,dto.getSdVodbox().lastIndexOf("."))+"."+fileExe;
		File destFile = new File(vodPath+File.separator+originChName);
		dto.getVodData().transferTo(destFile);
		if(fileExe.equals("mp4")){
			dto.setSdVodbox(originChName);
		}else{
			String mpMedia=dao.mediaEncoder(vodPath,originChName,dto.getSdVodbox());
			dto.setSdVodbox(mpMedia);
		}
		System.out.println(dto.getSdVodbox());
		//------------------------->vod file name set
		dto.setSdOpenDate(formatDate);
		dto.setSdCreateDate(formatDate);
		dto.setSdCategory("001000000");
		dto.setSdTitle("INSERT TITLE");
		dto.setSdContent("INSERT DESCRIPTION");
		//----------------------------> date setting
		dto.setSdImgbox(formatDate+".jpeg");
		
		String img=dao.imagesSlice(vodPath,imgPath,dto.getSdVodbox(),dto.getSdImgbox());
		dto.setSdImgbox(img);
		dto.setSdMetabox(formatDate+".txt");
		String metaDataFile=dao.createMetaFile(vodPath,metaPath,dto.getSdVodbox(),dto.getSdMetabox());
		dto.setSdMetabox(metaDataFile);
		String ftpIp=mediaserverIp;
		String ftpUser=mediaFtpUser;
		String ftpPass=mediaFtpPw;
		String ftpFileName=dto.getSdVodbox();
		String ftpUploadPath=vodPath;
		try {
			flag=dao.ftpUseUpload(ftpIp,ftpUser,ftpPass,ftpUploadPath,ftpFileName);
			System.out.println(flag);
		} catch (Exception e) {
			System.out.println(flag);
			e.printStackTrace();
		}
		
		dao.uploadComplete(dto);
		String topIdx=dao.topData();
		model.addAttribute("topIdx",topIdx);
		return "/sedn/uploadFileIdx.data";
	
	}
	@RequestMapping("/imgUploadFile.do")
	public String UploadFile(MultipartHttpServletRequest req,HttpSession session, HttpServletRequest request,Model model) throws Exception {
		MultipartFile imgfile = req.getFile("sdImgbox");
		String idx = request.getParameter("idx");
		System.out.println("==================="+idx);
		String fileExe=imgfile.getOriginalFilename().substring(imgfile.getOriginalFilename().lastIndexOf(".")+1,imgfile.getOriginalFilename().length());
		SimpleDateFormat todayDate=new SimpleDateFormat("yyyyMMddHHmmss");
		Date nowDate=new Date();
		String formatDate=todayDate.format(nowDate);
		String originChName=formatDate+"."+fileExe;
		File destFile = new File(webPath+"/boxImg"+File.separator+originChName);
		imgfile.transferTo(destFile);
		dao.imgUpdate(idx ,originChName);
		model.addAttribute("imgUrl","<img src='"+request.getContextPath()+"/boxImg/"+originChName+"'>");
		return "/sedn/imgView.data";
	}
	
	@RequestMapping("/dataDelete.do")
	public String vodDeleteComplete(@RequestParam int idx,HttpServletRequest req,Model model) throws Exception{
		dao.dataDelete(idx);
		return "/sedn/dataDelete.data";
	}
	
	@RequestMapping("/dataEdit.do")
	public String vodEdit(@ModelAttribute SednDataDTO dto,Model model) throws IOException{
		String preCategory=dto.getSdCategory();
		System.out.println("idx : "+dto.getIdx());
		int flag=dao.dataEdit(dto);
		System.out.println(flag);
		model.addAttribute("sdCategory",preCategory);
		return "/sedn/dataEditView.data";
	}
	
	
	/***
	 * 새로운 기획 SEDN
	 */
	
	@RequestMapping("/contents.do")
	public String board(){
	
		return "/sedn/contents.sedn";
	}
}
