package jungle.custom.controller;

import javax.servlet.http.HttpServletRequest;

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
@RequestMapping("/custom")
public class CustomController {
	@Autowired private CommonService commonService;
	
	@RequestMapping(value="/bringUp", method=RequestMethod.GET)
	public String bringUp(Model model, String contentsType){
		Contents contents = new Contents();
		contents.setViewLocation("1");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		contents.setContentsType(contentsType);
		model.addAttribute("contentsType", contentsType);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("1");
		contents.setContentsType(contentsType);
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "custom/customBringUp";
	}
	
	@RequestMapping(value="/bringUpMore", method=RequestMethod.POST)
	@ResponseBody
	public Object knowMore(int min, int max, HttpServletRequest request) throws Exception{
		Contents contents = new Contents();
		contents.setViewLocation("1");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		String contentsType = request.getParameter("contentsType");
		contents.setContentsType(contentsType);
		return commonService.selectContents(contents);
	}
	
	@RequestMapping(value="/hug", method=RequestMethod.GET)
	public String hug(Model model, String contentsType){
		Contents contents = new Contents();
		contents.setViewLocation("3");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		contents.setContentsType(contentsType);
		model.addAttribute("contentsType", contentsType);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("3");
		contents.setContentsType(contentsType);
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "custom/customHug";
	}
	
	@RequestMapping(value="/hugMore", method=RequestMethod.POST)
	@ResponseBody
	public Object hugMore(int min, int max){
		Contents contents = new Contents();
		contents.setViewLocation("3");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		return commonService.selectContents(contents);
	}
	
	@RequestMapping(value="/play", method=RequestMethod.GET)
	public String play(Model model, String contentsType){
		Contents contents = new Contents();
		contents.setViewLocation("2");
		contents.setMinLimit(0);
		contents.setMaxLimit(12);
		contents.setContentsType(contentsType);
		model.addAttribute("contentsType", contentsType);
		model.addAttribute("contents", commonService.selectContents(contents));
		contents = new Contents();
		contents.setViewLocation("2");
		contents.setContentsType(contentsType);
		if(commonService.selectContents(contents).size()<=12){
			model.addAttribute("moreDisplay", "none");
		}
		return "custom/customPlay";
	}
	
	@RequestMapping(value="/playMore", method=RequestMethod.POST)
	@ResponseBody
	public Object playMore(int min, int max){
		Contents contents = new Contents();
		contents.setViewLocation("2");
		contents.setMinLimit(min);
		contents.setMaxLimit(max);
		return commonService.selectContents(contents);
	}
	
}
