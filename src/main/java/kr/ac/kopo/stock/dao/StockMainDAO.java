package kr.ac.kopo.stock.dao;

import java.util.HashMap;
import java.util.List;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.vo.MyStockVO;
import kr.ac.kopo.stock.vo.StockMainVO;

public interface StockMainDAO {

	List<StockMainVO> showTodayStock();
	
	List<StockMainVO> playStock01();

	void updateBal(HashMap<String, Object> map);
	
	List<MyStockVO> getMyStock ();
	
	
	List<MyStockVO> getMyList (MemberVO user);
}
