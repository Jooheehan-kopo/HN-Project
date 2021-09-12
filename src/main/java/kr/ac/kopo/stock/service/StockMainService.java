package kr.ac.kopo.stock.service;

import java.util.List;

import kr.ac.kopo.stock.vo.StockMainVO;

public interface StockMainService {

	List<StockMainVO> showTodayStock();
	List<StockMainVO> playStockOne();
	void stockBuy(StockMainVO buy);
}
