package org.codekin.modules.board.dao;

import java.util.List;
import java.util.Map;

import org.codekin.pusecommunity.model.FreeBoard;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao extends SqlMapClientDaoSupport {

	public List<FreeBoard> selectPostList(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return (List<FreeBoard>)getSqlMapClientTemplate().queryForList(psNameSpace + ".selectPostList", param);
	}

	public int selectTotalPostCount(String psNameSpace) {
		// TODO Auto-generated method stub
		return Integer.parseInt(getSqlMapClientTemplate().queryForObject(psNameSpace + ".selectTotalPostCount").toString());
	}

	public void savePost(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().insert(psNameSpace + ".savePost", param);
	}

	public FreeBoard selectPost(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return (FreeBoard)getSqlMapClientTemplate().queryForObject(psNameSpace + ".selectPostDetail", param);
	}

	public String selectPostWriterId(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return getSqlMapClientTemplate().queryForObject(psNameSpace + ".selectPostWriterId", param).toString();
	}

	public void updatePost(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().update(psNameSpace + ".updatePost", param);
	}

	public void deletePost(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().delete(psNameSpace + ".deletePost", param);
	}
}