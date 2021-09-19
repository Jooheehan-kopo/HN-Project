package kr.ac.kopo.mbti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.ac.kopo.mbti.service.MbtiServiceImpl;

@SessionAttributes({"userVO"})
@Controller
public class MbtiController {
	
	
	@Autowired
	private MbtiServiceImpl service;
	
	
	@GetMapping("member/mbti")
	public String doMbti() {
		System.out.println("mbti page");
		return "member/mbti";
	}
	

}
