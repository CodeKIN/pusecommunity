package org.codekin.pusecommunity.service;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.codekin.modules.board.service.BoardService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@Service
public class CommunityService extends CommonService{
	private Object getBeanInstance(Class psTargetClass){
		WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(this.getSession(false).getServletContext());
		
		String vsBeanNames[] = webApplicationContext.getBeanNamesForType(psTargetClass);
		
		return webApplicationContext.getBean(vsBeanNames[0]);
	}
	
	private Object getBeanResult(Object poBeanInstance, String psTargetMethod, Class...classes)throws Exception{
		Class beanClass = poBeanInstance.getClass();
			
		return beanClass.getDeclaredMethod(psTargetMethod, classes).invoke(poBeanInstance);
	}
	
	public List<?> selectRecentPostList(Locale locale, Model model) throws Exception{
		return (List<?>) this.getBeanResult(this.getBeanInstance(BoardService.class), "selectRecentPostList");
	}

	public Object getClientPage() throws Exception {
		return this.getBeanResult(this.getBeanInstance(BoardService.class), "getClientPage");
	}

	public Object getBoardType() throws Exception {
		return this.getBeanResult(this.getBeanInstance(BoardService.class), "getBoardType");
	}

	public Map<String, Object> recentPostList(Locale locale, Model model) throws Exception {
		HttpServletRequest request = this.getRequest();
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put(request.getParameter("board_type") + "RecentList", this.selectRecentPostList(locale, model));
		
		return result;
	}
}
