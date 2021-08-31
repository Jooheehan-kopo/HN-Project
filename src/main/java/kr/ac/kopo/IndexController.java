package kr.ac.kopo;

import javax.servlet.http.HttpSession;

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
	
	@GetMapping("stock/stockMain")
	public String stock() {
		System.out.println("stock/stockMain");
		return "stock/stockMain";
	}
	

	
	@GetMapping("admin/index")
	public String adminIndex() {
		System.out.println("admin/index");
		return "admin/index";
	}
}
