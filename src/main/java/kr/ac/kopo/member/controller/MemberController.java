package kr.ac.kopo.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.member.service.MemberServiceImpl;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes({"userVO"})
@Controller
public class MemberController {
	
	
	@Autowired
	private MemberServiceImpl service;
	
	@GetMapping("/login")
	public String loginForm() {
		
		System.out.println("login");
		return "login/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO member, Model model, HttpSession session) {
		
		MemberVO userVO =service.login(member);
		
		if(userVO == null) {
			String msg="아이디 또는 패스워드가 잘못되었습니다";
			model.addAttribute("msg", msg);
			return "login/login";
		}
		
		//관리자페이지로 이동//?
		if(userVO.getType().equals("S")) {
			return "admin/index";
		}
	
		
		session.setAttribute("userVO", userVO);
		
		return "redirect:/"; //로그인성공시 홈화면으로 이동
	}

	@GetMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
//		session.invalidate(); //얘가 안먹힘. sessionAttribute로 하면.
		
		sessionStatus.setComplete();
		return "redirect:/";
	}
	
}
