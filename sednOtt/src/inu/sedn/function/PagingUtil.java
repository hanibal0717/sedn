package inu.sedn.function;

import javax.servlet.http.HttpServletRequest;


public class PagingUtil {
	public static String pagingText(
			HttpServletRequest req,
			String categoryCode,
			String sword,
			int totalRecordCount,
			int pageSize,int blockPage,
			int nowPage,String page){
		String pagingStr="<ul class='pagination'>";
		
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;
		if(intTemp != 1){
           pagingStr+= "<li><a href='#' rel='"+page+"nowPage="+(intTemp -blockPage)+"&categoryCode="+categoryCode+"&sword="+sword+"'><i class='fa fa-angle-left'></i></a></li>";
		}
		
		int blockCount = 1;
		
		while(blockCount <= blockPage && intTemp <= totalPage){  
			if(intTemp == nowPage){  
				pagingStr+="<li class='active'><a href='#' rel='"+page+"nowPage="+intTemp+"&categoryCode="+categoryCode+"&sword="+sword+"'>"+intTemp+"</a></li>";
			}
		     else
		    	 pagingStr+= "<li><a href='#' rel='"+page+"nowPage="+intTemp+"&categoryCode="+categoryCode+"&sword="+sword+"'>"+intTemp+"</a></li>&nbsp;";
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		}

		if(intTemp <= totalPage){
			pagingStr+="<li><a href='#' rel='"+page+"nowPage="+intTemp+"&categoryCode="+categoryCode+"&sword="+sword+"'><i class='fa fa-angle-right'></i></a></li>"; 
		}
		pagingStr+="</ul>";
		return pagingStr;
	}
}

