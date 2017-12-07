package jungle.mind.controller;

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

@Controller
@RequestMapping("/mind")
public class MindController {
	
	@Autowired private CommonService commonService;
	
	@RequestMapping(value="/mentoring", method=RequestMethod.GET)
	public String mindMentoring(Model model){
		Contents contents = new Contents();
		contents.setViewLocation("4");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("4");
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "mind/mindMentoring";
	}
	
	@RequestMapping(value="/mentoringMore", method=RequestMethod.POST)
	@ResponseBody
	public Object mentoringMore(int min, int max){
		Contents contents = new Contents();
		contents.setViewLocation("4");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		return commonService.selectContents(contents);
	}
	
	@RequestMapping(value="/diary", method=RequestMethod.GET)
	public String mindDiary(Model model){
		Contents contents = new Contents();
		contents.setViewLocation("5");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("5");
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "mind/mindDiary";
	}
	
	@RequestMapping(value="/diaryMore", method=RequestMethod.POST)
	@ResponseBody
	public Object diaryMore(int min, int max){
		Contents contents = new Contents();
		contents.setViewLocation("5");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		return commonService.selectContents(contents);
	}
	
	@RequestMapping(value="/meeting", method=RequestMethod.GET)
	public String mindMeeting(Model model){
		Contents contents = new Contents();
		contents.setViewLocation("6");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("6");
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "mind/mindMeeting";
	}
	
	@RequestMapping(value="/meetingMore", method=RequestMethod.POST)
	@ResponseBody
	public Object meetingMore(int min, int max){
		Contents contents = new Contents();
		contents.setViewLocation("6");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		return commonService.selectContents(contents);
	}
	
	@RequestMapping(value="/meetingView", method=RequestMethod.GET)
	public String mindMeetingView(String idx, Model model){
		Contents contents = new Contents();
		contents.setIdx(idx);
		contents.setViewLocation("8");
		model.addAttribute("contents", commonService.selectContent(contents));
		return "mind/mindMeetingView";
	}
}
