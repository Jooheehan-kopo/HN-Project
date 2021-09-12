package kr.ac.kopo.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	//모의투자화면상의 round1 주식 표
	@RequestMapping("stock/playStock")
	public ModelAndView playStock() {
		
		List<StockMainVO> psOneList = service.playStockOne();
		
		System.out.println();
		
		ModelAndView mav = new ModelAndView("stock/playStock");
		mav.addObject("list", psOneList);
		
		return mav;
	}
	
	
	//매수 값 전달 
	@PostMapping("/stock/playStock")
	public String stockBuy(StockMainVO buy ) {
		buy.getInput_cost();
		System.out.println("input cost: "+ buy.getInput_cost());
		service.stockBuy(buy);
		
		return "redirect:/stock/playStock";
		
	}
	
	

}
