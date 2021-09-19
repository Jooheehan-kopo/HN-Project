package kr.ac.kopo.mbti.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MbtiDAOImpl implements MbtiDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	
	

}
