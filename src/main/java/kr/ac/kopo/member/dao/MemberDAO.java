package kr.ac.kopo.member.dao;

import java.util.HashMap;

import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.MemberVO;

public interface MemberDAO {
	
	MemberVO login(MemberVO member);
	
	void createAccOne (HashMap<String, Object> map);
	
	 void createAccTwo (HashMap<String, Object> map);
}
