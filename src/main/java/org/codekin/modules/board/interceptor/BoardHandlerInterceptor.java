package org.codekin.modules.board.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class BoardHandlerInterceptor extends HandlerInterceptorAdapter{
	private Logger logger = Logger.getLogger(BoardHandlerInterceptor.class);
	
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
		if(request.getRequestURL().toString().toLowerCase().indexOf("/modules/board/") != -1){
			/* ******************************
			 * Board Response Attribute Add *
			 * ******************************
			 * client_page, board_type      *
			 * ******************************
			 * START                        *
			 * ******************************/
			
			modelAndView.addObject("client_page", request.getParameter("client_page") != null ? request.getParameter("client_page").toString() : 1 );
			modelAndView.addObject("board_type" , request.getParameter("board_type")  != null ? request.getParameter("board_type").toString() : "");
			
			/* ******************************
			 * Board Response Attribute Add *
			 * ******************************
			 * client_page, board_type      *
			 * ******************************
			 * END                          *
			 * ******************************/
		}
		
		super.postHandle(request, response, handler, modelAndView);
	}
}