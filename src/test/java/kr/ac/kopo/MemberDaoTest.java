package kr.ac.kopo;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.service.MemberServiceImpl;
import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class MemberDaoTest {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Autowired
	private MemberServiceImpl service;


	
	@Test
	public void 전체게시글조회test() throws Exception {
		MemberVO user = new MemberVO();
		user.setId("student");
		List<BankAccountVO> list = sessionTemplate.selectList("member.MemberDAO.myAccounts",user);
		for(BankAccountVO bank:list) {
			System.out.println();
		}
		
	}

 
	
	@Ignore
	@Test
	public void testtest() throws Exception{
		
		String temp = "\"aa";
		System.out.println(temp);
		
		temp.replaceAll("\"", "");
		System.out.println(temp);
		
		String str = "Hello \"World\"";
		System.out.println("따옴표 포함 : " + str);
		// 따옴표 제거
		str = str.replaceAll("\"", "");
		System.out.println("따옴표 제거 : " + str);

		
	}
	


	
}
