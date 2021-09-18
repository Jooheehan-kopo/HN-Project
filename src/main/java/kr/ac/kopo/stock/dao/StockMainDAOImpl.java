package kr.ac.kopo.stock.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.vo.MyStockVO;
import kr.ac.kopo.stock.vo.StockMainVO;

@Repository
public class StockMainDAOImpl implements StockMainDAO {

	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	//인기종목 상위30개
	public List<StockMainVO> showTodayStock() {
		
		List<StockMainVO> list = sqlsessionTemplate.selectList("crawl.stock.selectAll");
		
		System.out.println("DAO list : " + list);
	
		return list;
	}
	
	//라운드별 주식리스트
	public List<StockMainVO> playStock01(){
		List<StockMainVO> list = sqlsessionTemplate.selectList("crawl.stock.play01");
		
		System.out.println("playStock01: "+ list);
		return list;
	}
	public List<StockMainVO> playStock02(){
		List<StockMainVO> list = sqlsessionTemplate.selectList("crawl.stock.play02");
		
		System.out.println("playStock02: "+ list);
		return list;
	}
	
	//매수 후 테이블 잔액 및 로그 저장
	public void updateBal(HashMap<String, Object> map) {
		
		//update
		sqlsessionTemplate.update("crawl.stock.stockBal01", map);
		//insert
		sqlsessionTemplate.insert("crawl.stock.stockBuy", map);
		System.out.println("dao cost:"+ map);
		
	}
	
	public List<MyStockVO> getMyStock (){
		List<MyStockVO> list = sqlsessionTemplate.selectList("crawl.stock.myStock" );
		System.out.println("getMyStock:"+ list);
		return list;
	}
	
	//id가져와서 매수종목 리스트 출력
	public List<MyStockVO> getMyList ( @Param("id") MemberVO user){
		
		List<MyStockVO> list = sqlsessionTemplate.selectList("crawl.stock.myStock",user);
		System.out.println("getmyList:"+ list);
		System.out.println("아이디만 보여줘 DAO:"+ user.getId());
		return list;
	}
	


	
	
	
}
