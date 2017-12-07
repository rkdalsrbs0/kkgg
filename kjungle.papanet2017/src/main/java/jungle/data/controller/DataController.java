package jungle.data.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import jungle.data.domain.Article;
import jungle.data.domain.Ask;
import jungle.data.domain.Category;
import jungle.data.service.DataService;
import jungle.util.Paging;

@Controller
@RequestMapping("/ask")
public class DataController {
	@Autowired private DataService dataService;
	
	@RequestMapping("/faq")
	public String askHome(Model model, String pagenos, String categoryId, String search){
		List<Category> categoryList= dataService.selectCatogory();
		model.addAttribute("categoryList", categoryList);
		Map<String, Object> map = new HashMap<String, Object>();
		if(categoryId != null){
			map.put("categoryId", categoryId);
		}
		if(search != null){
			map.put("search", search);
			model.addAttribute("search", search);
		}
		
		List<Ask> faqList = dataService.selectAsk(map);
		model.addAttribute("faqList", faqList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(faqList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		return "data/faq";
	}
	
	@RequestMapping("/faq/search")
	public String searchFaq(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		String searchValue = request.getParameter("search");
		searchValue = URLEncoder.encode(searchValue, "UTF-8");
		if(searchValue==null || searchValue.equals("")){
			return "redirect:/ask/faq?pagenos=1";
		}else{
			return "redirect:/ask/faq?search="+searchValue+"&pagenos=1";
		}
	}
	
	@RequestMapping("/scrap")
	public String askscrap(Model model, String pagenos, String search){
		model.addAttribute("display", "normal");
		Map<String, Object> map = new HashMap<String, Object>();
		if(search != null){
			map.put("search", search);
			model.addAttribute("search", search);
			model.addAttribute("display", "search");
		}
		List<Map<String, Object>> articleList = dataService.selectArticles(map);
		model.addAttribute("articleList", articleList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(articleList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		return "data/scrap";
	}
	
	@RequestMapping("/scrap/search")
	public String searchScrap(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		String searchValue = request.getParameter("search");
		searchValue = URLEncoder.encode(searchValue, "UTF-8");
		if(searchValue==null || searchValue.equals("")){
			return "redirect:/ask/scrap?pagenos=1";
		}else{
			return "redirect:/ask/scrap?pagenos=1&search="+searchValue;
		}
	}
	
	@RequestMapping("/scrap/view/{idx}")
	public String askscrapView(@PathVariable String idx, Model model, HttpSession session, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		Article article = dataService.selectArticle(map);
			
		if(session.getAttribute(article.getIdx()) == null){
			map.put("viewCount", article.getViewCount()+1);
			dataService.updateArticle(map);
			session.setAttribute(article.getIdx(), "true");
		}
		Map<String, Object> preMap = new HashMap<String, Object>();
		preMap.put("idx", article.getIdx());
		try{
			model.addAttribute("display", request.getParameter("type"));
			if(request.getParameter("type").equals("search")){
				preMap.put("search", request.getParameter("search"));
				model.addAttribute("search", request.getParameter("search"));
			}
		}catch(Exception e){}
		preMap.put("pnType", "pre");
		model.addAttribute("pre", dataService.preNextContent(preMap));
		preMap.put("pnType", "next");
		model.addAttribute("next", dataService.preNextContent(preMap));
		model.addAttribute("article", article);
		return "data/scrapView";
	}
}
