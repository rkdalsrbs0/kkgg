package jungle.policy.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import jungle.common.domain.Contents;
import jungle.common.service.CommonService;
import jungle.policy.domain.Support;
import jungle.policy.service.PolicyService;
import jungle.util.Paging;

@Controller
@RequestMapping("/policy")
public class PolicyController {
	
	@Autowired private CommonService commonService;
	@Autowired private PolicyService policyService;
	
	@RequestMapping(value="/leaveInfo", method=RequestMethod.GET)
	public String leaveInfo(){
		return "policy/policyLeaveInfo";
	}
	
	@RequestMapping(value="/leaveInfo1", method=RequestMethod.GET)
	public String leaveInfo1(){
		return "policy/policyLeaveInfo1";
	}
	
	@RequestMapping(value="/supportInfo", method=RequestMethod.GET)
	public String supportInfo(Model model, String pagenos){
		List<Support> supportList = policyService.selectSupport();
		model.addAttribute("support", supportList);
		
		Paging paging = new Paging();
		int pageno = paging.toInt(pagenos);
		paging.setPagenos(pagenos);
		paging.setArrSize(supportList.size());
		
		model.addAttribute("pageno", pageno);
		model.addAttribute("page_eno", paging.pageCalc("page_eno"));
		model.addAttribute("page_sno", paging.pageCalc("page_sno"));
		model.addAttribute("prev_pageno", paging.pageCalc("prev_pageno"));
		model.addAttribute("next_pageno", paging.pageCalc("next_pageno"));
		model.addAttribute("total_page", paging.pageCalc("total_page"));
		return "policy/policySupportInfo";
	}
	
	@RequestMapping(value="/policyKnow", method=RequestMethod.GET)
	public String policyKnow(Model model){
		Contents contents = new Contents();
		contents.setViewLocation("0");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("0");
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "policy/policyKnow";
	}
	
	@RequestMapping(value="/knowMore", method=RequestMethod.POST)
	@ResponseBody
	public Object knowMore(int min, int max){
		Contents contents = new Contents();
		contents.setViewLocation("0");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		return commonService.selectContents(contents);
	}
	
}
