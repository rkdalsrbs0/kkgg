package jungle.common.dao.mapper;

import java.util.List;
import java.util.Map;

import jungle.common.domain.Banner;
import jungle.common.domain.CardNews;
import jungle.common.domain.Contents;

public interface CommonMapper {
	List<Banner> selectBanner();
	Map<String, Object> selectFile(Map<String, Object> map);
	List<Contents> selectContents(Contents contents);
	Contents selectContent(Contents contents);
	List<CardNews> selectCardNews(String idx);
	List<Map<String, Object>> selectFileList(Map<String, Object> map);
	boolean updateContents(Contents contents);
	Contents preNextContent(Map<String, Object> map);
	boolean logInsertSysLog(Map<String, String> map);
	
	boolean insertContent(Map<String, Object> map);
}
