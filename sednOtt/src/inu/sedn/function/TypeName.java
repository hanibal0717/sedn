package inu.sedn.function;

import javax.servlet.http.HttpServletRequest;

public class TypeName {
	public static String typeText(String type,String categoryCode,String categoryDepth,HttpServletRequest req){
		String typeName="";
		if(type.equals("Sub")){
			typeName="<a href='"+req.getContextPath()+"/categorySetting.do?categoryDepth="+categoryDepth+"&categoryCode="+categoryCode+"'><span class='btn btn-xs btn-alt m-r-5'>Go SubMenu</button></span>";
		}else if(type.equals("Vod")){
			typeName="Video Menu";
		}else if(type.equals("Live")){
			typeName="Live channel";
		}else if(type.equals("Qa")){
			typeName="Q&A";
		}else if(type.equals("Ns")){
			typeName="News Board";
		}else if(type.equals("Gl")){
			typeName="Gallery";
		}

		return typeName;
	}
}
