package jungle.data.service;

import java.util.List;
import java.util.Map;

import jungle.data.domain.Article;
import jungle.data.domain.Ask;
import jungle.data.domain.Category;

public interface DataService {
	List<Category> selectCatogory();
	List<Ask> selectAsk(Map<String, Object> map);
	List<Map<String, Object>> selectArticles(Map<String, Object> map);
	Article selectArticle(Map<String, Object> map);
	boolean updateArticle(Map<String, Object> map);
	Article preNextContent(Map<String, Object> map);
}