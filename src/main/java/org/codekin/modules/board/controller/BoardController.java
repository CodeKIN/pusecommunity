package org.codekin.modules.board.controller;

import java.util.Locale;
import java.util.Map;

import org.codekin.modules.board.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/modules/board/postList", method = RequestMethod.GET)
	public String postList(Locale locale, Model model) {
		Map<String, Object> boardInfo = boardService.selectPostList();
		model.addAttribute("board", boardInfo.get("boardList"));
		model.addAttribute("paginginfo", boardInfo.get("pagingInfo"));
		
		return "modules/board/postList";
	}

	/**
	 * view post
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/modules/board/postViewer", method = RequestMethod.GET)
	public String postViewer(Locale locale, Model model) {
		model.addAttribute("post", boardService.selectPost());
		
		return "modules/board/postViewer";
	}

	/**
	 * view post
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/modules/board/postWriter", method = RequestMethod.GET)
	public String postWriter(Locale locale, Model model) {
		
		return "modules/board/postWriter";
	}

	/**
	 * update post
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/modules/board/postUpdateViewer", method = RequestMethod.GET)
	public String postUpdateViewer(Locale locale, Model model) {
		model.addAttribute("post", boardService.selectPost());
		
		return "modules/board/postWriter";
	}

	/**
	 * update post
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/modules/board/postUpdate", method = RequestMethod.POST)
	public String postUpdate(Locale locale, Model model) {
		return "redirect:/modules/board/postViewer.do?post_id=" + boardService.updatePost();
	}
	
	/**
	 * update post
	 * @param locale
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/modules/board/postSave", method = RequestMethod.POST)
	public String postSave(Locale locale, Model model) {
		boardService.savePost();
		
		return "redirect:/modules/board/postList.do?client_page=1&board_type=" + boardService.getBoardType();
	}
}