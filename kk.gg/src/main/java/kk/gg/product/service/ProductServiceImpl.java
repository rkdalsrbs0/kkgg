package kk.gg.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kk.gg.login.domain.Work;
import kk.gg.product.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired private ProductDao productDao; 
	
	@Override
	public List<Work> selectWorks(Work work) {
		return productDao.selectWorks(work);
	}

	@Override
	public Work choiceWork(Work work) {
		return productDao.choiceWork(work);
	}

	@Override
	public boolean updateScore(Work work) {
		return productDao.updateScore(work);
	}

	@Override
	public boolean updateTotal(Work work) {
		return productDao.updateTotal(work);
	}

	@Override
	public List<Work> searchTitleWorks(Work work) {
		return productDao.searchTitleWorks(work);
	}

	@Override
	public boolean insertScore(Work work) {
		return productDao.insertScore(work);
	}

	@Override
	public boolean insertTotal(Work work) {
		return productDao.insertTotal(work);
	}

	@Override
	public int selectEval(Work work) {
		return productDao.selectEval(work);
	}
}