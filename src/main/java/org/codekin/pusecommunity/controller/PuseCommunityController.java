package org.codekin.pusecommunity.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PuseCommunityController {
	private static final Logger logger = LoggerFactory.getLogger(PuseCommunityController.class);

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
}