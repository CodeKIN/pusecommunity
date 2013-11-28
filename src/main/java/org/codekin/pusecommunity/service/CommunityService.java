package org.codekin.pusecommunity.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.codekin.modules.board.service.BoardService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@Service
public class CommunityService extends CommonService{
	public List<Map<String, Object>> selectRecentPostList(Locale locale, Model model){
		List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
		WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(this.getSession(false).getServletContext());
		
		String vsBeanNames[] = webApplicationContext.getBeanNamesForType(BoardService.class);
		
		Object beanInstance = webApplicationContext.getBean(vsBeanNames[0]);

		if (beanInstance != null) {
			Class beanClass = beanInstance.getClass();
			
			try {
				result = (List<Map<String, Object>>) beanClass.getDeclaredMethod("selectRecentPostList").invoke(beanInstance);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
}
