package kr.ac.kopo.stock.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.dao.StockMainDAO;
import kr.ac.kopo.stock.vo.MyStockVO;
import kr.ac.kopo.stock.vo.StockMainVO;

@Service
public class StockMainServiceImpl implements StockMainService {

	@Autowired
	private StockMainDAO stockMDAO;
	
	//인기종목 상위 30개
	public List<StockMainVO> showTodayStock () {
		
		List<StockMainVO> stockList = stockMDAO.showTodayStock();
		
		return stockList;
	}
	
	//라운드별 주식 리스트
	public List<StockMainVO> playStockOne(){
		List<StockMainVO> psOneList = stockMDAO.playStock01();
		return psOneList;
	}
	
	//매수가격 넘기기
	public void stockBuy(StockMainVO buy,@SessionAttribute("userVO") MemberVO user) {
		//user.getId();
		//buy.getInput_cost();
		
		//현재가 trim 처리
		String end_p = buy.getEnd_p();
		String new_p =end_p.trim();
		System.out.println("new_p: "+ new_p);
		buy.setEnd_p(new_p);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberVO", user);
		map.put("stockmainVO", buy);
		
		System.out.println("service 몇개: "+ buy.getCount());
		System.out.println("service 현재가: "+ buy.getEnd_p());
		System.out.println("service 종목: "+ buy.getStock_name());
		System.out.println("==================================");
		System.out.println("service:"+ buy.getInput_cost());
		System.out.println("service:"+ user.getId());
		stockMDAO.updateBal(map);
		
	}
	public  List<MyStockVO> MyStock (){
		List<MyStockVO> mystock = stockMDAO.getMyStock();
		return mystock;
	
	}
	
	public List<MyStockVO> MyList( @SessionAttribute("userVO") MemberVO user) {
		System.out.println("아이디만전달해 서비스:"+ user.getId());
		//stockMDAO.getMyList(user);
		
		List<MyStockVO> mystock = stockMDAO.getMyList(user);
		return mystock;
		
	}
}
