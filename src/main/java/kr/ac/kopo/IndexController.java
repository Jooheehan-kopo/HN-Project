package kr.ac.kopo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping("/")
	public String index() {
		System.out.println("index");
		return "index";
	}
	@GetMapping("/index")
	public String index2() {
		System.out.println("index");
		return "index";
	}
	
	@GetMapping("account/accountMain")
	public String page() {
		System.out.println("account/accountMain");
		return "account/accountMain";
	}
}
