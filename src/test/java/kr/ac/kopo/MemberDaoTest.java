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
import kr.ac.kopo.member.vo.BankTransVO;
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


	@Ignore
	@Test
	public void 전체게시글조회test() throws Exception {
		MemberVO user = new MemberVO();
		user.setId("student");
		List<BankAccountVO> list = sessionTemplate.selectList("member.MemberDAO.myAccounts",user);
		for(BankAccountVO bank:list) {
			System.out.println();
		}
		
	}
	
	@Test
	public void 이체프로시저test() throws Exception {
		BankTransVO trans = new BankTransVO();
		trans.setBank_id("11114309628");
		trans.setTrans_money(10000);
		trans.setYour_bank_id("11122797153");
		
		System.out.println("trans:" +trans);
		memberDAO.trans(trans);
	
	}
	@Test
	public void 이체프로시저DAOtest() throws Exception {
		BankTransVO trans = new BankTransVO();
		trans.setBank_id("11114309628");
		trans.setTrans_money(10000);
		trans.setYour_bank_id("11122797153");
		
		System.out.println("trans:" +trans);
		sessionTemplate.insert("member.MemberDAO.myAccounts",trans);
		
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
