package kr.ac.kopo.admin.dao;

import java.util.List;

import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;

public interface AdminDAO {

	AdminVO login(AdminVO admin);
	List<InfoVO> membinfo();
}
