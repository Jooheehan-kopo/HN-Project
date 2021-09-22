package kr.ac.kopo.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.admin.service.AdminServiceImpl;
import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes({"userVO"})
@Controller
public class AdminController {
	
	
	@Autowired
	private AdminServiceImpl service;

	@GetMapping("/admin")
	public String admin() {
		return "admin/index";
	}
	
	//로그인페이지
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
		
		return "redirect:/admin/main"; //로그인성공시 홈화면으로 이동**이부분 redirect 해줘야 페이지로 돌아옴!!
	}

	//총회원수 출력
	@RequestMapping("admin/main")
	public ModelAndView main() {
		AdminVO count = service.countMemer();
		AdminVO countS = service.countSchool();
		 AdminVO countM = service.countMbti();
		
		SimpleDateFormat date = new SimpleDateFormat ( "yyyy년 MM월dd일");
		Date time = new Date();
		
		String time1 = date.format(time);
		
		ModelAndView mav = new ModelAndView("admin/main");
		mav.addObject("count",count);
		mav.addObject("date", time1);//날짜출력
		mav.addObject("school",countS);
		mav.addObject("mbti",countM);
		
		System.out.println("count:"+count.getCountMember());
		return mav;
	}
	
	//회원정보조회
	@RequestMapping("admin/table")
	public ModelAndView searchSchool() {
		List<InfoVO> meminfo = service.membinfo();
		
		ModelAndView mav = new ModelAndView("admin/table");
		mav.addObject("info", meminfo);

		return mav;
	}
	
	//리포트 생성
	@GetMapping("admin/report")
	public String report() {
		return "admin/report";
	}
	@ResponseBody
	@RequestMapping("admin/report")
	public ModelAndView getInfo(InfoVO member) {
		List<InfoVO> info = service.getinfo(member);
		
		ModelAndView mav = new ModelAndView("admin/report");
		mav.addObject("info", info);
		System.out.println("info:"+info);
		
		return mav;
	}

}
