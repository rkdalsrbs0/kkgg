package kk.gg.poster.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kk.gg.login.domain.Work;
import kk.gg.poster.service.PosterService;
import kk.gg.util.Paging;

@Controller
@RequestMapping("/poster")
public class PosterController {
	@Autowired private PosterService posterService;
	
	protected final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping
	public String productRedir(HttpSession session, Model model){
		if(session.getAttribute("menu").equals("2")){
			return "redirect:/poster/1";
		}else{
			model.addAttribute("result", "false");
			model.addAttribute("resultMsg", "접근하실 수 없습니다.");
			return "index";
		}
	}
	
	@RequestMapping(value="/{pagenos}", method=RequestMethod.GET)
	public String productList(Model model, HttpServletRequest request, @PathVariable String pagenos, HttpSession session){
		if(session.getAttribute("menu").equals("2")){
			Work work = new Work();
			work.setValuer((String)session.getAttribute("id"));
			
			List<Work> workList = posterService.selectWorks(work);
			model.addAttribute("workList", workList);
			model.addAttribute("workSize", workList.size());
			Paging paging = new Paging();
			int pageno = paging.toInt(pagenos);
			paging.setPagenos(pagenos);
			paging.setArrSize(workList.size());
			
			model.addAttribute("pageno", pageno);
			model.addAttribute("page_eno", paging.pageCalc("page_eno"));
			model.addAttribute("page_sno", paging.pageCalc("page_sno"));
			model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
			model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
			model.addAttribute("total_page", paging.pageCalc("total_page"));
			return "poster/poster";
		}else{
			model.addAttribute("result", "false");
			model.addAttribute("resultMsg", "접근하실 수 없습니다.");
			return "index";
		}
	}
	
	@RequestMapping("/search")
	public String searchProduct(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		String searchValue = request.getParameter("search");
		searchValue = URLEncoder.encode(searchValue, "UTF-8");
		if(searchValue==null || searchValue.equals("")){
			return "redirect:/poster/1";
		}else{
			return "redirect:/poster/"+searchValue+"/1";
		}
	}
	
	@RequestMapping("/{search}/{pagenos}")
	public String productSearch(@PathVariable String search, Work work, @PathVariable String pagenos, Model model, HttpSession session){
		if(session.getAttribute("menu").equals("2")){
			work.setSearch(search);
			work.setValuer((String)session.getAttribute("id"));
			List<Work> searchList = posterService.searchTitleWorks(work);
			model.addAttribute("searchList", searchList);
			model.addAttribute("searchSize", searchList.size());
			
			Paging paging = new Paging();
			int pageno = paging.toInt(pagenos);
			paging.setPagenos(pagenos);
			paging.setArrSize(searchList.size());
			
			model.addAttribute("search", search);
			model.addAttribute("pageno", pageno);
			model.addAttribute("page_eno", paging.pageCalc("page_eno"));
			model.addAttribute("page_sno", paging.pageCalc("page_sno"));
			model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
			model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
			model.addAttribute("total_page", paging.pageCalc("total_page"));
			return "poster/poster";
		}else{
			model.addAttribute("result", "false");
			model.addAttribute("resultMsg", "접근하실 수 없습니다.");
			return "index";
		}
	}
	
	@RequestMapping(value="/view", method=RequestMethod.POST)
	public String productView(Work work, Model model, HttpSession session){
		if(session.getAttribute("menu").equals("2")){
			work.setValuer((String)session.getAttribute("id"));
			Work workInfo = posterService.choiceWork(work);
			model.addAttribute("work", workInfo);
			return "poster/posterView";
		}else{
			model.addAttribute("result", "false");
			model.addAttribute("resultMsg", "접근하실 수 없습니다.");
			return "index"; 
		}
	}
	
	@RequestMapping("/score")
	public String productScore(Work work, HttpSession session, Model model){
		if(session.getAttribute("menu").equals("2")){
			int check = posterService.selectEval(work);
			if(check == 0){
				posterService.insertScore(work);
			}else if(check >= 1){
				posterService.updateScore(work);
			}
			return "redirect:/poster/1";
		}else{
			model.addAttribute("result", "false");
			model.addAttribute("resultMsg", "접근하실 수 없습니다.");
			return "index";
		}
	}
	
	@RequestMapping("/total")
	public String productTotal(Work work, Model model, HttpSession session){
		if(session.getAttribute("menu").equals("2")){
			int check = posterService.selectEval(work);
			if(check == 0){
				posterService.insertTotal(work);
			}else if(check >= 1){
				posterService.updateTotal(work);
			}
			return "redirect:/poster/1";
		}else{
			model.addAttribute("result", "false");
			model.addAttribute("resultMsg", "접근하실 수 없습니다.");
			return "index";
		}
	}
}