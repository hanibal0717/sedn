package inu.sedn.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

import inu.sedn.model.CategoryDTO;

public class SettingDAO {
	public void setSqlMapper(SqlMapClient sqlMapper) {
	}
	public void setSqlFactory(SqlSessionFactory sqlFactory) {
	}
	
	private SqlSessionTemplate sqlTemplate;	
	public void setSqlTemplate(SqlSessionTemplate sqlTemplate) {
		this.sqlTemplate = sqlTemplate;
	}
	SqlMapClientTemplate sqlMapTemplate;
	public void setSqlMapTemplate(SqlMapClientTemplate sqlMapTemplate) {
		this.sqlMapTemplate = sqlMapTemplate;
	}
	public void addCategory(CategoryDTO dto) {
		sqlTemplate.insert("categoryInsert",dto);
		
	}
	public String createHead(String categoryDepth) {
		String headCode=sqlTemplate.selectOne("headCode",categoryDepth);
		return headCode;
	}
	public List<CategoryDTO> categoryList(String categoryDepth,String categoryCode) {
		List<CategoryDTO> lists=null;
		Map map = new HashMap();	
		map.put("categoryDepth", categoryDepth);
		map.put("categoryCode", categoryCode);
		lists=sqlTemplate.selectList("categoryLists",map);
		return lists;
	}
	public CategoryDTO jasonCategoryView(String categoryCode) {
		CategoryDTO list=sqlTemplate.selectOne("categoryView",categoryCode);
		return list;
	}
	public void categoryEdit(CategoryDTO dto) {
		sqlTemplate.update("categoryUpdate",dto);
	}
	public void categoryDelete(String categoryCode) {
		sqlTemplate.delete("categoryDelete",categoryCode);
	}
	public String categoryNameText(String categoryCode) {
		String categoryNameText=sqlTemplate.selectOne("selectCategoryName",categoryCode);
		return categoryNameText;
	}
	public String categoryNameIdx(String categoryCode) {
		String categoryIdxText=sqlTemplate.selectOne("selectCategoryIdx",categoryCode);
		return categoryIdxText;
	}
}
