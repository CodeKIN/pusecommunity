package org.codekin.modules.board.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.codekin.modules.board.dao.BoardDao;
import org.codekin.pusecommunity.model.FreeBoard;
import org.codekin.pusecommunity.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService extends CommonService{
	@Autowired
	private BoardDao boardDao;
	
	//viewPostCnt
	private final static int pageCnt      = 10;
	//viewPageCnt
	private final static int pageGrp      = 10;

	public Map<String, Object> selectPostList() {
		HttpServletRequest request = this.getRequest();

		int totCnt       = 0;
		int totPage      = 0;
		int currentPage  = request.getParameter("client_page") != null ? Integer.parseInt(request.getParameter("client_page").toString()) : 1;
		int startPageNum = currentPage % pageGrp == 0 ? (currentPage / pageGrp - 1) * pageGrp + 1 : (currentPage / pageGrp) * pageGrp + 1;
		int endPageNum   = startPageNum + pageGrp - 1;
		int startRow     = currentPage * pageCnt - pageCnt;
		int endRow       = pageCnt;
		

		Map<String, Object> result = new HashMap<String, Object>();

		/* ****************************
		 * select boardList
		 * ****************************/
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("startrow", startRow);
		param.put("endrow", endRow);
		result.put("boardList", boardDao.selectPostList(request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "", param));

		/* ****************************
		 * select boardList
		 * ****************************/
		

		/* ****************************
		 * create pagingInfo
		 * ****************************/
		
		totCnt = boardDao.selectTotalPostCount(request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "");
		
		totPage = totCnt / pageCnt + (totCnt % pageCnt == 0 ? 0 : 1);
		
		
		Map<String, Object> pagingInfo = new HashMap<String, Object>();
		
		pagingInfo.put("totcnt", totCnt);
		pagingInfo.put("totpage", totPage);
		pagingInfo.put("startpagenum", startPageNum);
		pagingInfo.put("endpagenum", endPageNum);
		pagingInfo.put("pagegrp", pageGrp);
		pagingInfo.put("client_page", currentPage);
		
		result.put("pagingInfo", pagingInfo);
		
		/* ****************************
		 * create pagingInfo
		 * ****************************/
		
		result.put("board_type", request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "");
		
		return result;
	}

	public void savePost() {
		HttpServletRequest request = this.getRequest();
		String[] keys = {"subject", "content"};
		
		Map<String, Object> param = this.getParamMap(keys, request);
		
		param.put("writer_id", request.getSession(false).getAttribute("USER_ID"));
		
		boardDao.savePost(request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "", param);
	}

	public FreeBoard selectPost() {
		HttpServletRequest request = this.getRequest();
		String[] keys = {"post_id"};
		
		Map<String, Object> param = this.getParamMap(keys, request);
		
		return boardDao.selectPost(request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "", param);
	}

	public String updatePost() {
		HttpServletRequest request = this.getRequest();
		String[] keys = {"post_id", "subject", "content"};
		Map<String, Object> param = this.getParamMap(keys, request);
		
		/* ***************************************
		 * checking writer and requester         *
		 * ***************************************/
		
		if(boardDao.selectPostWriterId(request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "", param).equals(request.getSession(false).getAttribute("USER_ID"))){
			boardDao.updatePost(request.getParameter("board_type") != null ? request.getParameter("board_type").toString() : "", param);
		}
		
		/* ***************************************
		 * checking writer and requester         *
		 * ***************************************/

		return request.getParameter("post_id");
	}

	public String getClientPage() {
		HttpServletRequest request = this.getRequest();

		return request.getParameter("client_page") != null ? request.getParameter("client_page").toString() : "1";
	}

	public String getBoardType() {
		HttpServletRequest request = this.getRequest();

		return request.getParameter("board_type")  != null ? request.getParameter("board_type").toString() : "";
	}
}