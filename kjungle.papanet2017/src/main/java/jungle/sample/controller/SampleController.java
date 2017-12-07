package jungle.sample.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;

import jungle.common.domain.Contents;
import jungle.common.service.CommonService;
import jungle.util.Paging;

@Controller
@RequestMapping("/sample")
public class SampleController {
	@Autowired private CommonService commonService;
	
	@RequestMapping("/foreignList/{pagenos}")
	public String foreign(Model model, @PathVariable String pagenos){
		model.addAttribute("display", "normal");
		Contents contents = new Contents();
		contents.setViewLocation("7");
		List<Contents> contentList = commonService.selectContents(contents);
		model.addAttribute("border", contentList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(contentList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		return "sample/foreign";
	}
	
	@RequestMapping("/foreignList/{search}/{pagenos}")
	public String foreign(Model model, @PathVariable String pagenos, @PathVariable String search){
		model.addAttribute("display", "search");
		model.addAttribute("search", search);
		Contents contents = new Contents();
		contents.setViewLocation("7");
		contents.setSearch(search);
		List<Contents> contentList = commonService.selectContents(contents);
		model.addAttribute("border", contentList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(contentList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		
		return "sample/foreign";
	}
	
	@RequestMapping("/foreign/search")
	public String searchForeign(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		String searchValue = request.getParameter("search");
		searchValue = URLEncoder.encode(searchValue, "UTF-8");
		if(searchValue==null || searchValue.equals("")){
			return "redirect:/sample/foreignList/1";
		}else{
			return "redirect:/sample/foreignList/"+searchValue+"/1";
		}
	}
	
	@RequestMapping("/experienceList/{pagenos}")
	public String experience(Model model, @PathVariable String pagenos){
		model.addAttribute("display", "normal");
		Contents contents = new Contents();
		contents.setViewLocation("8");
		List<Contents> contentList = commonService.selectContents(contents);
		model.addAttribute("border", contentList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(contentList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		return "sample/experience";
	}
	
	@RequestMapping("/experienceList/{search}/{pagenos}")
	public String experience(Model model, @PathVariable String pagenos, @PathVariable String search){
		model.addAttribute("display", "search");
		model.addAttribute("search", search);
		Contents contents = new Contents();
		contents.setViewLocation("8");
		contents.setSearch(search);
		List<Contents> contentList = commonService.selectContents(contents);
		model.addAttribute("border", contentList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(contentList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		return "sample/experience";
	}
	
	@RequestMapping("/experience/search")
	public String searchExperience(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		String searchValue = request.getParameter("search");
		searchValue = URLEncoder.encode(searchValue, "UTF-8");
		if(searchValue==null || searchValue.equals("")){
			return "redirect:/sample/experienceList/1";
		}else{
			return "redirect:/sample/experienceList/"+searchValue+"/1";
		}
	}
	
	@RequestMapping(value="/view/{cid}", method=RequestMethod.GET)
	public String sampleView(@PathVariable String cid, Model model, HttpSession session, HttpServletRequest request){
		Contents content = new Contents();
		content.setIdx(cid);
		Contents contentMap = commonService.selectContent(content);
		
		if(session.getAttribute(contentMap.getIdx()) == null){
			content.setViewCount(contentMap.getViewCount()+1);
			commonService.updateContents(content);
			session.setAttribute(contentMap.getIdx(), "true");
		}
		
		Map<String, Object> preMap = new HashMap<String, Object>();
		preMap.put("viewLocation", contentMap.getViewLocation());
		preMap.put("idx", contentMap.getIdx());
		try{
			model.addAttribute("display", request.getParameter("type"));
			if(request.getParameter("type").equals("search")){
				preMap.put("search", request.getParameter("search"));
				model.addAttribute("search", request.getParameter("search"));
			}
		}catch(Exception e){}
		preMap.put("pnType", "pre");
		model.addAttribute("pre", commonService.preNextContent(preMap));
		preMap.put("pnType", "next");
		model.addAttribute("next", commonService.preNextContent(preMap));
		model.addAttribute("content", contentMap);
		return "sample/sampleView";
	}
}
