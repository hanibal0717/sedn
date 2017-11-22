package inu.sedn.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

public class OttDAO {
	public void setSqlMapper(SqlMapClient sqlMapperOTT) {
	}
	public void setSqlFactory(SqlSessionFactory sqlFactoryOTT) {
	}
	
	private SqlSessionTemplate sqlTemplateOTT;	
	public void setSqlTemplate(SqlSessionTemplate sqlTemplateOTT) {
		this.sqlTemplateOTT = sqlTemplateOTT;
	}
	SqlMapClientTemplate sqlMapTemplateOTT;
	public void setSqlMapTemplate(SqlMapClientTemplate sqlMapTemplateOTT) {
		this.sqlMapTemplateOTT = sqlMapTemplateOTT;
	}
	

	public int countVods() {
		int countVods=sqlTemplateOTT.selectOne("countVods");
		return countVods;
	}
	public int countSTBs() {
		int numTotalSTBs=sqlTemplateOTT.selectOne("countSTBs");
		return numTotalSTBs;
	}
	public Map<String, Object> connectionStat() throws Exception{
		List<HashMap<String, Object>>  map= sqlTemplateOTT.selectList("connectionStat");
		Map<String, Object> resultMap=new HashMap<String, Object>();
			resultMap.put("CONNECTED", map.get(0).get("CONNECTED"));
			resultMap.put("DISCONNECTED", map.get(0).get("DISCONNECTED"));
		return resultMap;
	}
}
