package kr.ac.kopo.sms.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.sms.service.certificationService;

@Controller
public class sendSMSController {
	
	@ResponseBody
	@PostMapping("/send/sms")
	public String sendSMS(@RequestBody String phoneNumber) {
		System.out.println("컨트롤러");
		System.out.println(phoneNumber);
		
		Random rand = new Random();
		String numStr ="";
		for(int i=0; i<4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr+=ran;
			
		}
		
		System.out.println("수신자번호: " + phoneNumber);
		System.out.println("인증번호: " + numStr);
		
	
		certificationService.certifiedPhoneNumber(phoneNumber,numStr);
		
		System.out.println("여기까지 넘어오니?");
	
	/*	 return "account/accountMain"; */
		return numStr;
	}
	
	
	
	
}

