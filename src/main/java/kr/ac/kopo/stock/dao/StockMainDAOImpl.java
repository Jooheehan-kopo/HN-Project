package kr.ac.kopo.stock.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.stock.vo.StockMainVO;

@Repository
public class StockMainDAOImpl implements StockMainDAO {

	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	public List<StockMainVO> showTodayStock() {
		
		List<StockMainVO> list = sqlsessionTemplate.selectList("crawl.stock.selectAll");
		
		System.out.println("DAO list : " + list);
	
		return list;
	}
	
	public List<StockMainVO> playStock01(){
		List<StockMainVO> list = sqlsessionTemplate.selectList("crawl.stock.play01");
		
		System.out.println("playStock01: "+ list);
		return list;
	}
	
	public void updateBal(StockMainVO buycost) {
		
		sqlsessionTemplate.update("crawl.stock.stockBal01", buycost);
		System.out.println("dao cost:"+ buycost.getInput_cost());
		
	}
}
