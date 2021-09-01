package kr.ac.kopo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.crawler.service.CrawlingService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class StockDAOTest {
	@Autowired
//	private StockDAO stockDAO;
	private CrawlingService service;
		
	@Test
	public void stockTest() throws Exception{
		service.insert(null);
	
	}
}
