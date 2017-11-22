package inu.sedn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

class SessionInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request,
					HttpServletResponse response, Object handler) throws Exception {
	
		Object admin_id=request.getSession().getAttribute("admin_id");
		String  contextPath=request.getContextPath();
		if(request.getRequestURI().equals(contextPath+"/login.do")
				||request.getRequestURI().equals(contextPath+"/loginProcess.do")
				||request.getRequestURI().equals(contextPath+"/board.do")
				||request.getRequestURI().equals(contextPath+"/index.do")
				||request.getRequestURI().indexOf("/services")>-1
			){
			if(admin_id !=null){
				return true;
			}else{
				return true;
			}
		}
		if(admin_id==null){
			response.sendRedirect(contextPath+"/login.do");
			return false;
		}else{
			return true;
		}
	}
	
	
}
