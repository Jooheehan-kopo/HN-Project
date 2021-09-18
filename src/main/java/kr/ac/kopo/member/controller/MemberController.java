package kr.ac.kopo.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.service.MemberServiceImpl;
import kr.ac.kopo.member.vo.BankAccountVO;
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
		if(userVO.getType().equals("A")||userVO.getType().equals("T") ) {
			return "admin/index";
		}
	
		
		session.setAttribute("userVO", userVO);
		
		return "redirect:/"; //로그인성공시 홈화면으로 이동
	}

	
	@GetMapping("member/resister")
	public String index() {
		System.out.println("resister");
		return "member/resister";
	}
	
	
	@PostMapping("account/accountMain")
	public String AccStepOne(BankAccountVO bank,@SessionAttribute("userVO") MemberVO user) {
		System.out.println(bank.getBank_username());
		System.out.println("name, res: "+ bank.getBank_username()+","+ bank.getBank_res_no());
		
		service.newAccOne(bank, user);
		
		return "account/accountTwo";
		
		
	}
	
	
	@PostMapping("account/accountTwo")
	public String AccStepTwo(BankAccountVO bank,@SessionAttribute("userVO") MemberVO user) {
		
		System.out.println("account two"+bank);
		service.newAccTwo(bank,user);
	
		return "account/accountThree";
	}
	


	@RequestMapping("account/accountSearch")
	public ModelAndView searchAcc(@SessionAttribute("userVO") MemberVO user) {
		System.out.println("아이디내놔:"+ user);
		
		List<BankAccountVO> showAcc = service.myAccount(user);
		ModelAndView mav = new ModelAndView("account/accountSearch");
		
		mav.addObject("bankVO", showAcc);
		return mav;
		
	}
	
	@GetMapping("account/accountTrans")
	public String accTrans() {
		return "account/accountTrans";
	}
	
	
	
	
	
	@GetMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
//		session.invalidate(); //얘가 안먹힘. sessionAttribute로 하면.
		
		sessionStatus.setComplete();
		return "redirect:/";
	}
	
	@GetMapping("member/mbti")
	public String doMbti() {
		System.out.println("mbti page");
		return "member/mbti";
	}
	

}
