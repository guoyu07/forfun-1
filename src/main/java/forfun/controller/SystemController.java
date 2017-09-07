package forfun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys")
public class SystemController {
	
	@RequestMapping("/log")
	public String index(){
		
		return "/system/syslog";
	}
	
}
