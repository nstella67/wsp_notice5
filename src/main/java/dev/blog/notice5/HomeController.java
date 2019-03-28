package dev.blog.notice5;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	//첫 페이지 호출
	//http://localhost:9090/notice5/
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/notice/list.do");
		return mav;
	}//home() end
	
}//class end
