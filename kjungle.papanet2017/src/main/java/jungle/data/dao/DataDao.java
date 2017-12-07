package jungle.data.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jungle.data.dao.mapper.DataMapper;
import jungle.data.domain.Article;
import jungle.data.domain.Ask;
import jungle.data.domain.Category;

@Repository
public class DataDao {
	@Autowired private DataMapper dataMapper;
	
	public List<Category> selectCatogory(){
		return dataMapper.selectCatogory();
	}
	
	public List<Ask> selectAsk(Map<String, Object> map){
		return dataMapper.selectAsk(map);
	}
	
	public List<Map<String, Object>> selectArticles(Map<String, Object> map){
		return dataMapper.selectArticles(map);
	}
	
	public Article selectArticle(Map<String, Object> map){
		return dataMapper.selectArticle(map);
	}
	
	public boolean updateArticle(Map<String, Object> map){
		return dataMapper.updateArticle(map);
	}
	
	public Article preNextContent(Map<String, Object> map){
		return dataMapper.preNextContent(map);
	}
}
