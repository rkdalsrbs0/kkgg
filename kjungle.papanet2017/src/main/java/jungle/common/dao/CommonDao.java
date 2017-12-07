package jungle.common.dao;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jungle.common.dao.mapper.CommonMapper;
import jungle.common.domain.Banner;
import jungle.common.domain.CardNews;
import jungle.common.domain.Contents;

@Repository
public class CommonDao{
	@Autowired private CommonMapper commonMapper;
	
	public List<Banner> selectBanner(){
		return commonMapper.selectBanner();
	}
	
	public Map<String, Object> selectFile(Map<String, Object> map){
		return commonMapper.selectFile(map);
	}
	
	public List<Contents> selectContents(Contents contents){
		return commonMapper.selectContents(contents);
	}
	
	public Contents selectContent(Contents contents){
		return commonMapper.selectContent(contents);
	}
	
	public List<CardNews> selectCardNews(String idx){
		return commonMapper.selectCardNews(idx);
	}
	
	public List<Map<String, Object>> selectFileList(Map<String, Object> map){
		return commonMapper.selectFileList(map);
	}
	
	public boolean updateContents(Contents contents){
		return commonMapper.updateContents(contents);
	}
	
	public Contents preNextContent(Map<String, Object> map){
		return commonMapper.preNextContent(map);
	}
	
	public boolean logInsertSysLog(Map<String, String> map){
		return commonMapper.logInsertSysLog(map);
	}
	
	public boolean insertContent(Map<String, Object> map){
		return commonMapper.insertContent(map);
	}
}