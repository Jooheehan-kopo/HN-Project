package kr.ac.kopo.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

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
		
		model.addAttribute("userVO", userVO);
		
		return "redirect:/"; //로그인성공시 홈화면으로 이동
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
