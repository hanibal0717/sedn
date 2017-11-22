package inu.sedn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import inu.sedn.dao.SettingDAO;
import inu.sedn.function.OpenName;
import inu.sedn.function.TypeName;
import inu.sedn.model.CategoryDTO;


@Controller
public class SettingController {
	SettingDAO dao;
	public void setDao(SettingDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/managerAccount.do")
	public String managerAccount(){
		return "/sedn/managerAccount.sedn";
	}
	
	@RequestMapping("/categorySetting.do")
	public String menuSetting(@RequestParam String categoryDepth,@RequestParam String categoryCode,Model model,HttpServletRequest req){
		String depthTitle="";
		
		if(categoryDepth.equals("A")){
			depthTitle="TOP CATEGORY";
		}else if(categoryDepth.equals("B")){
			String categoryName=dao.categoryNameText(categoryCode);
			depthTitle="<a href='"+req.getContextPath()+"/categorySetting.do?categoryDepth=A&categoryCode=' >TOP CATEGORY</a>";
			depthTitle=depthTitle+"  >   <a href='"+req.getContextPath()+"/categorySetting.do?categoryDepth=B&categoryCode="+categoryCode+"'>"+categoryName+"</a>";
		}else if(categoryDepth.equals("C")){
			String categoryOneName=dao.categoryNameText(categoryCode.substring(0,3)+"000000");
			String categoryTwoName=dao.categoryNameText(categoryCode.substring(0,6)+"000");
			depthTitle="<a href='"+req.getContextPath()+"/categorySetting.do?categoryDepth=A&categoryCode=' >TOP CATEGORY</a>";
			depthTitle=depthTitle+"  >   <a href='"+req.getContextPath()+"/categorySetting.do?categoryDepth=B&categoryCode="+categoryCode+"'>"+categoryOneName+"</a>";;
			depthTitle=depthTitle+"  >   <a href='"+req.getContextPath()+"/categorySetting.do?categoryDepth=C&categoryCode="+categoryCode+"'>"+categoryTwoName+"</a>";;
		}
		model.addAttribute("depthTitle",depthTitle);
		model.addAttribute("categoryCode",categoryCode);
		model.addAttribute("categoryDepth",categoryDepth);
		return "/sedn/menuSetting.sedn";
	}
	
	@RequestMapping("/categoryInsert.do")
	public String categoryInsert(CategoryDTO dto,Model model){
		String categoryHead=dao.createHead(dto.getCategoryDepth());
		if(categoryHead==null){
			categoryHead="0";
		}
		if(dto.getCategoryCode()==null){
			dto.setCategoryCode("");
		}
		if(dto.getCategoryOpen()==null){
			dto.setCategoryOpen("N");
		}
		categoryHead=String.format("%03d",Integer.parseInt(categoryHead)+1);
		String categoryTail="";
		if(dto.getCategoryDepth().equals("A")){
			categoryTail="000000";
			dto.setCategoryCode("");
		}else if(dto.getCategoryDepth().equals("B")){
			categoryTail="000";
			dto.setCategoryCode(dto.getCategoryCode().substring(0,3));
		}else{
			categoryTail="";
			dto.setCategoryCode(dto.getCategoryCode().substring(0,6));
		}
		dto.setCategoryCode(dto.getCategoryCode()+categoryHead+categoryTail);
		dao.addCategory(dto);
		model.addAttribute("idx",dto.getIdx());
		return "/sedn/categoryInsert.data";
	}
	@RequestMapping("/categoryList.do")
	public String categoryList(@RequestParam String categoryDepth,@RequestParam String categoryCode,Model model,HttpServletRequest req){
		List<CategoryDTO> lists=null;
		if(categoryDepth.equals("A")){
			lists=dao.categoryList(categoryDepth,categoryCode);
		}else if(categoryDepth.equals("B")){
			lists=dao.categoryList(categoryDepth,categoryCode.substring(0,3));
		}else if(categoryDepth.equals("C")){
			lists=dao.categoryList(categoryDepth,categoryCode.substring(0,6));
		}else{
			lists=null;
		}
		String nextDepth="";
		if(categoryDepth.equals("A")){
			nextDepth="B";
		}else if(categoryDepth.equals("B")){
			nextDepth="C";
		}
		for(int i=0;i<lists.size();i++){
			String typeName=TypeName.typeText(lists.get(i).getCategoryType(),lists.get(i).getCategoryCode(),nextDepth,req);
			String openName=OpenName.openText(lists.get(i).getCategoryOpen());
			lists.get(i).setCategoryType(typeName);
			lists.get(i).setCategoryOpen(openName);
		}
		model.addAttribute("lists",lists);
		return "/sedn/categoryList.data";
	}
	
	@RequestMapping("/categoryView.do")
	public String categoryEditForm(@RequestParam String categoryCode,Model model){
		CategoryDTO dto=dao.jasonCategoryView(categoryCode);
		JSONObject json = new JSONObject();
			json.put("categoryIdx",dto.getIdx());
			json.put("categoryCode",dto.getCategoryCode());
			json.put("categoryName",dto.getCategoryName());
			json.put("categoryDepth",dto.getCategoryDepth());
			json.put("categoryType",dto.getCategoryType());
			json.put("categoryAuth",dto.getCategoryAuth());
			json.put("categoryOpen",dto.getCategoryOpen());
		JSONArray jsonArr = new JSONArray();
			jsonArr.add(json);
		String jsonData=jsonArr.toString();
		model.addAttribute("jsonData",jsonData);
		return "/sedn/categoryView.data";
	}
	@RequestMapping("/categoryEdit.do")
	public String categoryEdit(CategoryDTO dto,Model model){
		if(dto.getCategoryOpen()==null){
			dto.setCategoryOpen("N");
		}
		dao.categoryEdit(dto);
		String parentCode="";
		if(dto.getCategoryDepth().equals("B")){
			parentCode=dto.getCategoryCode().substring(0,3)+"000000";
		}else if(dto.getCategoryDepth().equals("C")){
			parentCode=dto.getCategoryCode().substring(0,6)+"000";
		}
		model.addAttribute("idx",parentCode);
		return "/sedn/categoryEdit.data";
	}
	
	@RequestMapping("/categoryDelete.do")
	public String categoryDelete(@RequestParam String categoryCode,Model model){
		String idx=dao.categoryNameIdx(categoryCode);
		dao.categoryDelete(categoryCode);
		model.addAttribute("idx",idx);
		return "/sedn/categoryDelete.data";
	}
}
