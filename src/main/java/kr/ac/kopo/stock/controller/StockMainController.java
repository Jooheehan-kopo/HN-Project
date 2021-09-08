package kr.ac.kopo.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.stock.service.StockMainService;
import kr.ac.kopo.stock.vo.StockMainVO;


@Controller
public class StockMainController {
	
	@Autowired
	private StockMainService service;
	
	@RequestMapping("stock/stockMain")
	public ModelAndView showTodayStock() {
		
		List<StockMainVO> stocklist = service.showTodayStock();
		
		ModelAndView mav = new ModelAndView("stock/stockMain");
		mav.addObject("list", stocklist );
	
		
		return mav;
		
	}
	
	@GetMapping("stock/resisterStock")
	public String resisterStock() {
		
		return "stock/resisterStock";
	}
	
	

}
