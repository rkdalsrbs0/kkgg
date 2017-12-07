package jungle.common.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jungle.common.dao.CommonDao;
import jungle.common.domain.Banner;
import jungle.common.domain.CardNews;
import jungle.common.domain.Contents;

@Service
public class CommonServiceImpl implements CommonService{
	@Autowired private CommonDao commonDao;
	@Override
	public List<Banner> selectBanner() {
		return commonDao.selectBanner();
	}
	
	@Override
	public Map<String, Object> selectFile(Map<String, Object> map) {
		return commonDao.selectFile(map);
	}

	@Override
	public List<Contents> selectContents(Contents contents) {
		return commonDao.selectContents(contents);
	}

	@Override
	public Contents selectContent(Contents contents) {
		return commonDao.selectContent(contents);
	}

	@Override
	public List<CardNews> selectCardNews(String idx) {
		return commonDao.selectCardNews(idx);
	}

	@Override
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) {
		return commonDao.selectFileList(map);
	}

	@Override
	public boolean updateContents(Contents contents) {
		return commonDao.updateContents(contents);
	}
	
	@Override
	public Contents preNextContent(Map<String, Object> map) {
		return commonDao.preNextContent(map);
	}
	@Override
	public boolean insertContent(Map<String, Object> map) {
		return commonDao.insertContent(map);
	}

	@Override
	public boolean logInsertSysLog(Map<String, String> map) {
		return commonDao.logInsertSysLog(map);
	}
}