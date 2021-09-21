package kr.ac.kopo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;
import kr.ac.kopo.stock.vo.StockMainVO;


@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	//로그인
	public AdminVO login(AdminVO admin) {
		
		AdminVO adminVO = sqlsessionTemplate.selectOne("admin.AdminDAO.Adlogin",admin);
		return adminVO;
	}
	
	//회원정보출력
	public List<InfoVO> membinfo() {
		List<InfoVO>  info = sqlsessionTemplate.selectList("admin.AdminDAO.infoList" );
		System.out.println("info DAO: "+ info);
		return info;
	
	}
	
	//총회원수뽑기
	public AdminVO countMember() {
		AdminVO count = sqlsessionTemplate.selectOne("admin.AdminDAO.mainOne");
		System.out.println("총회원수: "+ count);
		return count;
	}
	//총학교수
	public AdminVO countSchool() {
		AdminVO count = sqlsessionTemplate.selectOne("admin.AdminDAO.mainTwo");
		System.out.println("총학교수: "+ count);
		return count;
	}
	//mbti 참여횟수
	public AdminVO countMbti() {
		AdminVO count = sqlsessionTemplate.selectOne("admin.AdminDAO.mainThree");
		System.out.println("mbti: "+ count);
		return count;
	}
	
}
