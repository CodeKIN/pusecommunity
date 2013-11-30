package org.codekin.pusecommunity.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.codehaus.jackson.annotate.JsonWriteNullProperties;
import org.codekin.pusecommunity.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PuseCommunityController {
	@Autowired
	private CommunityService communityService;
	
	/**
	 * welcome page
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "index";
	}

	/**
	 * news page
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/news/newsIndex", method = RequestMethod.GET)
	public String newsIndex(Locale locale, Model model) throws Exception {
		return "news/newsIndex";
	}
	
	/**
	 * community page
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/community/communityIndex", method = RequestMethod.GET)
	public String communityIndex(Locale locale, Model model) throws Exception {
//		model.addAttribute("recentpostlist", communityService.selectRecentPostList(locale, model));
//		model.addAttribute("client_page"   , communityService.getClientPage());
//		model.addAttribute("board_type"    , communityService.getBoardType());
		
		return "community/communityIndex";
	}
	
	/**
	 * market page
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/market/marketIndex", method = RequestMethod.GET)
	public String marketIndex(Locale locale, Model model) {
		return "market/marketIndex";
	}

	/**
	 * contectus page
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/contectus/contectusIndex", method = RequestMethod.GET)
	public String contectusIndex(Locale locale, Model model) {
		return "contectus/contectusIndex";
	}

	/**
	 * contectus page
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/partners/partnersIndex", method = RequestMethod.GET)
	public String partnersIndex(Locale locale, Model model) {
		return "partners/partnersIndex";
	}
	
	/**
	 * community page
	 * @param locale
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/community/modules/recentPostList", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> recentPostList(Locale locale, Model model) throws Exception {
		return communityService.recentPostList(locale, model);
	}
}