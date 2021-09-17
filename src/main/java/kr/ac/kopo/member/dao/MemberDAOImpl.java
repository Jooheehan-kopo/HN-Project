package kr.ac.kopo.member.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	public MemberVO login(MemberVO member) {
		
		MemberVO userVO = sqlsessionTemplate.selectOne("member.MemberDAO.login",member);
		return userVO;
	}
	
	public void createAccOne (HashMap<String, Object> map) {
		
		sqlsessionTemplate.insert("member.MemberDAO.account", map);
		System.out.println("member acc: " + map);
		
	}
	public void createAccTwo (HashMap<String, Object> map) {
		
		sqlsessionTemplate.update("member.MemberDAO.accountTwo", map);
		System.out.println("member acc: " + map);
		
	}

}
