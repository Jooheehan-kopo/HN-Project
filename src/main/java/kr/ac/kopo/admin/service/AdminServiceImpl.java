package kr.ac.kopo.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.admin.dao.AdminDAO;
import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;


@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO; //의존성 자동주입
	

	public AdminVO login(AdminVO admin) {
			
		AdminVO adminVO = adminDAO.login(admin);
			return adminVO;
		}
	
	//회원목록출력
	public List<InfoVO> membinfo(){
		List<InfoVO> infolist = adminDAO.membinfo();
		
		return infolist;
	}
	
	//총회원수보여주기
	public AdminVO countMemer() {
		AdminVO count = adminDAO.countMember();
		
		return count;
	}
	
	//총학교수보여주기
	public AdminVO countSchool() {
		AdminVO count = adminDAO.countSchool();
		return count;
	}
	//mbti보여주기
	public AdminVO countMbti() {
		AdminVO count = adminDAO.countMbti();
		return count;
	}
}
