package kr.ac.kopo.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.service.StockMainService;
import kr.ac.kopo.stock.vo.MyStockVO;
import kr.ac.kopo.stock.vo.StockMainVO;

@SessionAttributes({"userVO"})
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
	// 표2
	@RequestMapping("stock/playStock")
	public ModelAndView getmyList( @SessionAttribute("userVO") MemberVO user) {
		
		 //service에 내 로그인정보 전달
		System.out.println("아이디내놔:"+ user);
		
		//리스트에 서비스에 있는 것 가져와서 저장 후 뷰에 전달(받기)
		List<MyStockVO> mystockList = service.MyList(user);
		
		//playStock
		List<StockMainVO> psOneList = service.playStockOne();
		
		
		ModelAndView mav = new ModelAndView("stock/playStock");
		mav.addObject("mystock", mystockList);
		mav.addObject("list", psOneList);
		
		
		return mav;
		
		
	}
	//주식종목 리스트 변경
	@ResponseBody
	@GetMapping("stock/changelist01")
	public List<StockMainVO> changeList01(){
		List<StockMainVO> psTwoList = service.playStockTwo();
		System.out.println("con twoList: "+ psTwoList);
		return psTwoList;
	}
	
	

	//매수 값 전달 
	@PostMapping("stock/playStock")
	public String stockBuy(StockMainVO buy, @SessionAttribute("userVO") MemberVO user) {
		
//		String id = (String)session.getAttribute("userVO");
//		System.out.println(id);
		System.out.println(buy.getStock_name());
		
		buy.getInput_cost();
		System.out.println("input cost: "+ buy.getInput_cost());
		service.stockBuy(buy,user);
		
		
		return "redirect:/stock/playStock";
		
	}
	
	
	

}
