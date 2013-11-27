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


	@RequestMapping(value = "/market/marketIndex", method = RequestMethod.GET)
	public String postList(Locale locale, Model model) {
		return "market/marketIndex";
	}
}