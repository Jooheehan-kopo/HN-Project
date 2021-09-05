package kr.ac.kopo.stock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.stock.dao.StockMainDAO;
import kr.ac.kopo.stock.vo.StockMainVO;

@Service
public class StockMainServiceImpl implements StockMainService {

	@Autowired
	private StockMainDAO stockMDAO;
	
	public List<StockMainVO> showTodayStock () {
		
		List<StockMainVO> stockList = stockMDAO.showTodayStock();
		
		return stockList;
	}
	
}
