package kr.ac.kopo.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.admin.service.AdminServiceImpl;
import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;

@SessionAttributes({"userVO"})
@Controller
public class AdminController {
	
	
	@Autowired
	private AdminServiceImpl service;

	@GetMapping("/admin")
	public String admin() {
		return "admin/index";
	}

	@GetMapping("/admin/login")
	public String adminLogin() {
		return "login/adminLogin";
	}
	
//teacher
	@PostMapping("/admin/login")
	public String login(AdminVO admin, Model model, HttpSession session) {
		
		AdminVO userVO =service.login(admin);
		
		if(userVO == null) {
			String msg="아이디 또는 패스워드가 잘못되었습니다";
			model.addAttribute("msg", msg);
			return "login/adminLogin";
		}
	
		
		session.setAttribute("userVO", userVO);
		
		return "admin/main"; //로그인성공시 홈화면으로 이동
	}

	//admin
	@GetMapping("admin/main")
	public String main() {
		return "admin/main";
	}
	
	@RequestMapping("admin/table")
	public ModelAndView searchSchool() {
		List<InfoVO> meminfo = service.membinfo();
		
		ModelAndView mav = new ModelAndView("admin/table");
		mav.addObject("info", meminfo);

		return mav;
	}

}
