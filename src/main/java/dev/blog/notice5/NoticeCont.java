package dev.blog.notice5;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeCont {
	
	@Autowired
	NoticeDAO dao;
	
	public NoticeCont() {
		System.out.println("--- NoticeCont() 객체 생성");
	} 
	
	//결과확인 http://localhost:9090/notice5/notice/create.do
	
	@RequestMapping(value="/notice/create.do", method=RequestMethod.GET)
	public ModelAndView createForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/createForm");
		return mav;
	}//createForm() end
	
	@RequestMapping(value="/notice/create.do", method=RequestMethod.POST)
	public ModelAndView createProc(NoticeDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/notice/list.do");
		int count=dao.create(dto);
		mav.addObject("count", count);
		return mav;
	}//createProc() end
	
	@RequestMapping(value="/notice/list.do", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/list");
		ArrayList<NoticeDTO> list=dao.list();
		mav.addObject("list", list);
		return mav;
	}//list() end
	
	@RequestMapping(value="/notice/read.do", method=RequestMethod.GET)
	public ModelAndView read(NoticeDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/read");
		dto=dao.read(dto);
		mav.addObject("dto", dto);
		return mav;
	}//list() end
	
	@RequestMapping(value="/notice/update.do", method=RequestMethod.GET)
	public ModelAndView updateForm(NoticeDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/updateForm");
		dto=dao.read(dto);
		mav.addObject("dto", dto);
		return mav;
	}//update() end
	
	@RequestMapping(value="/notice/update.do", method=RequestMethod.POST)
	public ModelAndView updateProc(NoticeDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/notice/list.do");
		int count=dao.update(dto);
		mav.addObject("count", count);
		return mav;
	}//createProc() end
	
	@RequestMapping(value="/notice/delete.do", method=RequestMethod.GET)
	public ModelAndView delete(NoticeDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/delete");
		dto=dao.read(dto);
		mav.addObject("dto", dto);
		return mav;
	}//update() end
	
	@RequestMapping(value="/notice/delete.do", method=RequestMethod.POST)
	public ModelAndView deleteProc(NoticeDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/notice/list.do");
		int count=dao.delete(dto);
		mav.addObject("count", count);
		return mav;
	}//createProc() end
	
	@RequestMapping(value="/notice/search.do", method=RequestMethod.GET)
	public ModelAndView search(String col, String word) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/list");
		ArrayList<NoticeDTO> list=dao.search(col, word);
		mav.addObject("list", list);
		return mav;
	}//createProc() end
	
}//class end
