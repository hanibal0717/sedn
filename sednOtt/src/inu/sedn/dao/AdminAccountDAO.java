package inu.sedn.dao;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

import inu.sedn.model.AdminAccountDTO;



public class AdminAccountDAO {
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

	public int loginProcess(String admin_id, String admin_pass, HttpSession session) {
		int flag=0;
		int tmp=0;
		tmp=sqlTemplate.selectOne("id_check",admin_id);
		if(tmp==0){
			flag=1;
		}else{
			Map<String,String> map= new HashMap<String,String>();	
			map.put("admin_id", admin_id);
			map.put("admin_pass", admin_pass);
			try{
				AdminAccountDTO dto=sqlTemplate.selectOne("pass_check",map);
				session.setAttribute("admin_id", dto.getAdmin_id());
				session.setAttribute("admin_name", dto.getAdmin_name());
				session.setMaxInactiveInterval(60*60*60);
				flag=0;
			}catch(Exception e){
				flag=2;
			}
			
		}
		return flag;
	}
}
