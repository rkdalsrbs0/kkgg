package jungle.data.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jungle.data.dao.DataDao;
import jungle.data.domain.Article;
import jungle.data.domain.Ask;
import jungle.data.domain.Category;

@Service
public class DataServiceImpl implements DataService{
	@Autowired private DataDao dataDao;
	
	public List<Category> selectCatogory(){
		return dataDao.selectCatogory(); 
	}

	@Override
	public List<Ask> selectAsk(Map<String, Object> map) {
		return dataDao.selectAsk(map);
	}

	@Override
	public List<Map<String, Object>> selectArticles(Map<String, Object> map) {
		return dataDao.selectArticles(map);
	}

	@Override
	public Article selectArticle(Map<String, Object> map) {
		return dataDao.selectArticle(map);
	}

	@Override
	public boolean updateArticle(Map<String, Object> map) {
		return dataDao.updateArticle(map);
	}

	@Override
	public Article preNextContent(Map<String, Object> map) {
		return dataDao.preNextContent(map);
	}
}
