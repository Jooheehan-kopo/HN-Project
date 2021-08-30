package kr.ac.kopo.crawler.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jdk.internal.org.jline.utils.Log;
import kr.ac.kopo.crawler.service.CrawlingService;
import kr.ac.kopo.crawler.vo.StockVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping
public class StockController {

	@Autowired
	private CrawlingService service;
	@GetMapping("/stock")
	public void stockInfo(Model model) {
		String url[] = {
				"https://finance.naver.com/sise/lastsearch2.nhn"
		};
		
		for(int i = 0; i<url.length;i++) {
			Log.info("@StockController, stockInfo url :" + url[i]);
			service.insert(url[i]);
		}
		/*
		 * System.out.println("stock"); return "stock/stockMain";
		 */
		
		System.out.println();
	}
}
