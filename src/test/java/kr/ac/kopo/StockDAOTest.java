package kr.ac.kopo;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.crawler.service.CrawlingService;
import kr.ac.kopo.sms.service.certificationService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class StockDAOTest {
	@Autowired
//	private StockDAO stockDAO;
	private CrawlingService service;
		
	private certificationService certiService;
	
	@Ignore
	@Test
	public void stockTest() throws Exception{
		service.insert(null);
	
	}
	
	@Test
	public void realTest() throws Exception{
		
		String phoneNum = "\"01047739853\"";
		certiService.certifiedPhoneNumber(phoneNum, "asfd");
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
