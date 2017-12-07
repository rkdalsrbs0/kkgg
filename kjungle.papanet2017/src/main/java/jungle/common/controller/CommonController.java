package jungle.common.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jungle.common.domain.Banner;
import jungle.common.domain.Contents;
import jungle.common.service.CommonService;
import jungle.data.domain.Ask;
import jungle.data.service.DataService;
import jungle.util.FileDownloadUtil;
import jungle.util.StringUtil;

@Controller
@RequestMapping("/")
public class CommonController {
	@Autowired private CommonService commonService;
	@Autowired private DataService dataService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) throws Exception{
		List<Banner> bannerList = commonService.selectBanner();
		model.addAttribute("bannerList", bannerList);
		Contents contents = new Contents();
		contents.setViewLocation("0");
		contents.setMinLimit(0);
		contents.setMaxLimit(4);
		model.addAttribute("policyKnow", commonService.selectContents(contents));
		contents.setViewLocation("1");
		contents.setViewLocation2("2");
		contents.setViewLocation3("3");
		contents.setMinLimit(0);
		contents.setMaxLimit(4);
		model.addAttribute("custom", commonService.selectContents(contents));
		contents.setViewLocation("4");
		contents.setViewLocation2("5");
		contents.setViewLocation3("6");
		contents.setMinLimit(0);
		contents.setMaxLimit(4);
		model.addAttribute("mind", commonService.selectContents(contents));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("limit", 5);
		List<Ask> faqList = dataService.selectAsk(map);
		model.addAttribute("faqList", faqList);
		List<Map<String, Object>> articleList = dataService.selectArticles(map);
		model.addAttribute("articleList", articleList);
		return "index";
	}
	
	//컨텐츠 선택
	@RequestMapping(value="/contents/{cid}", method=RequestMethod.GET)
	public String contentView(@PathVariable String cid, Model model){
		Contents content = new Contents();
		content.setIdx(cid);
		content.setContentsType("0");
		Contents contentMap = commonService.selectContent(content);
		model.addAttribute("content", contentMap);
		return "content/contentView";
	}
	
	//영상 컨텐츠
	@RequestMapping(value="/content/video/{cid}", method=RequestMethod.GET)
	@ResponseBody
	public Object video(String cid) throws Exception{
		Contents content = new Contents();
		content.setIdx(cid);
		content.setContentsType("2");
		return commonService.selectContent(content);
	}
	
	//카드뉴스 컨텐츠
	@RequestMapping(value="/content/cardNews/{cid}", method=RequestMethod.GET)
	@ResponseBody
	public Object cardNews(String cid) throws Exception{
		return commonService.selectCardNews(cid);
	}
	
	//insert 예제(selectKey)
	@RequestMapping(value="/abc", method=RequestMethod.GET)
	@ResponseBody
	public Object abc(String title, String viewLocation){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("title", title);
		map.put("viewLocation", viewLocation);
		return commonService.insertContent(map);
	}
	
	//카드뉴스 보여주기
	@RequestMapping("/cardNews/view/{cid}")
	public String imgView(@PathVariable String cid, Model model){
		model.addAttribute("contents", commonService.selectCardNews(cid));
		return "content/imgView";
	}
	
	//파일다운로드
	@RequestMapping(value = "/fileDownload", method = RequestMethod.GET)
	public void filedownload(HttpServletRequest request, HttpServletResponse response
																, @RequestParam(value="idx", required=false) String idx
																, @RequestParam("fileId") String fileId
																, @RequestParam(value="deleteYn",  required=false) String deleteYn
																) throws Exception {
		
		idx = StringUtil.isNullToString(idx);
		if(fileId != null && !"".equals(fileId)){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("fileId", fileId);
			List<Map<String,Object>> fileList = commonService.selectFileList(map);
			
			String paramFileName = StringUtil.isNullToString(fileList.get(0).get("saveNm"));
			String oriFileName = StringUtil.isNullToString(fileList.get(0).get("fileNm"));
			FileDownloadUtil fileDownloadUtil = new FileDownloadUtil();
			fileDownloadUtil.download(request, response, paramFileName, oriFileName, "", idx + "/");
			
		}
	}
	
	//이미지프리뷰
	@RequestMapping(value="/imgPreview.do")
	public void preview(HttpServletResponse response, long id, String type) throws Exception {
		Map<String, Object> map= new HashMap<>();
		map.put("id", id);
    	Map<String, Object> commonFile= commonService.selectFile(map);
    	HttpHeaders headers = new HttpHeaders();

        if (commonFile == null)
            return;

        MediaType mediaType = null;
        String imagePath = "";

        switch ((String)commonFile.get("EXTENSION")) {
            case "JPEG":
            case "JPG":
                mediaType = MediaType.IMAGE_JPEG;
                break;

            case "PNG":
                mediaType = MediaType.IMAGE_PNG;
                break;

            case "GIF":
                mediaType = MediaType.IMAGE_GIF;
                break;
                
            case "PDF":
                mediaType = MediaType.parseMediaType("application/pdf");
                break;
                
            default:
        }
        if(type.equals("banner")){
        	//배너파일
        	imagePath = "/data/fileserver/papanet/banner/"+(String) commonFile.get("SAVE_NM");
        }else{
        	//일반파일
        	imagePath = "/data/fileserver/papanet/"+(String) commonFile.get("SAVE_NM");
        }
        if (mediaType != null) {
            byte[] bytes = FileUtils.readFileToByteArray(new File(imagePath));

            response.setContentType(mediaType.toString());
            response.setContentLength(bytes.length);
            
            IOUtils.copy(FileUtils.openInputStream(new File(imagePath)), response.getOutputStream());
        }
    }
}
