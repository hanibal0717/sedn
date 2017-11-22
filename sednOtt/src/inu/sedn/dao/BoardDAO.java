package inu.sedn.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

public class BoardDAO {
	
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
}
