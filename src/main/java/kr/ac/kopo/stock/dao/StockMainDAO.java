package kr.ac.kopo.stock.dao;

import java.util.List;

import kr.ac.kopo.stock.vo.StockMainVO;

public interface StockMainDAO {

	List<StockMainVO> showTodayStock();
}
