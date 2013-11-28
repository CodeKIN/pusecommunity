package org.codekin.modules.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao extends SqlMapClientDaoSupport {

	public List<?> selectPostList(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return (List<?>)getSqlMapClientTemplate().queryForList(psNameSpace + ".selectPostList", param);
	}

	public int selectTotalPostCount(String psNameSpace) {
		// TODO Auto-generated method stub
		return Integer.parseInt(getSqlMapClientTemplate().queryForObject(psNameSpace + ".selectTotalPostCount").toString());
	}

	public void savePost(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		getSqlMapClientTemplate().insert(psNameSpace + ".savePost", param);
	}

	public Object selectPost(String psNameSpace, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return getSqlMapClientTemplate().queryForObject(psNameSpace + ".selectPostDetail", param);
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

	public List<?> selectRecentPostList(String psNameSpace, Map<String, Object> param) {
		return getSqlMapClientTemplate().queryForList(psNameSpace + ".selectRecentPostList", param);
	}
}