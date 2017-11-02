package kk.gg.login.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kk.gg.login.domain.C11ReceiptVO;
import kk.gg.login.domain.Login;
import kk.gg.login.service.LoginService;
import kk.gg.util.C11EvaluationExcelView;
import kk.gg.util.FileDownloadUtil;
import kk.gg.util.GmailMailSender;
import kk.gg.util.StringUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired private LoginService loginService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(){
		return "index";
	}
	
	@RequestMapping(value="/login")
	public String login(){
		return "/login/loginForm";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		session.setMaxInactiveInterval(0);
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/fileDownload", method = RequestMethod.GET)
	public void filedownload(HttpServletRequest request, HttpServletResponse response
//																, @RequestParam("saveFileName") String paramFileName
//																, @RequestParam("fileName") String oriFileName
																, @RequestParam("receiptIdx") String receiptIdx
																, @RequestParam("fileId") String fileId
																, @RequestParam(value="deleteYn",  required=false) String deleteYn
																) throws Exception {
		if(fileId != null && !"".equals(fileId)){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("fileId", fileId);
			List<Map<String,Object>> fileList = loginService.selectFileList(map);
			
			String paramFileName = StringUtil.isNullToString(fileList.get(0).get("SAVE_NM"));
			String oriFileName = StringUtil.isNullToString(fileList.get(0).get("FILE_NM"));
			String receipt = StringUtil.isNullToString(receiptIdx);
			
			FileDownloadUtil fileDownloadUtil = new FileDownloadUtil();
			fileDownloadUtil.download(request, response, paramFileName, oriFileName, receipt, "");
		}
	}
	
	@RequestMapping("/userJoin")
	public String join(){
		return "/login/userJoin";
	}
	
	@RequestMapping(value="/evaluation", method = {RequestMethod.GET}, produces = "application/json; charset=UTF-8")
    public ModelAndView evaluation() {
    	Map<String, Object> param = new HashMap<String, Object>();

    	param.put("productType", "0");
    	for(int i = 1; i <= 8; i++) {
        	param.put("valuer"+i, "idea"+i);
    	}
        List<C11ReceiptVO> idea = loginService.getExcelBuild(param);
        param.put("productType", "3");
    	for(int i = 1; i <= 8; i++) {
        	param.put("valuer"+i, "idea"+i);
    	}
        List<C11ReceiptVO> system = loginService.getExcelBuild(param);
    	param.put("productType", "1");
    	for(int i = 1; i <= 8; i++) {
        	param.put("valuer"+i, "design"+i);
    	}
        List<C11ReceiptVO> design = loginService.getExcelBuild(param);

    	param.put("productType", "2");
    	for(int i = 1; i <= 8; i++) {
    		param.put("valuer"+i, "essay"+i);
    	}
        List<C11ReceiptVO> essay = loginService.getExcelBuild(param);

        
        Map<String, Object> map = new HashMap<String, Object>();
		map.put("idea", idea);
		map.put("system", system);
		map.put("design", design);
		map.put("essay", essay);
        return new ModelAndView(new C11EvaluationExcelView(), "excelMap", map);
    }
}