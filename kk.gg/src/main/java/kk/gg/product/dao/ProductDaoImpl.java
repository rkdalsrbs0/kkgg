package kk.gg.product.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kk.gg.login.domain.Work;
import kk.gg.product.dao.mapper.ProductMapper;

@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired private ProductMapper productMapper;
	
	@Override
	public List<Work> selectWorks(Work work) {
		return productMapper.selectWorks(work);
	}

	@Override
	public Work choiceWork(Work work) {
		return productMapper.choiceWork(work);
	}

	@Override
	public boolean updateScore(Work work) {
		return productMapper.updateScore(work);
	}

	@Override
	public boolean updateTotal(Work work) {
		return productMapper.updateTotal(work);
	}

	@Override
	public List<Work> searchTitleWorks(Work work) {
		return productMapper.searchTitleWorks(work);
	}

	@Override
	public boolean insertScore(Work work) {
		return productMapper.insertScore(work);
	}

	@Override
	public boolean insertTotal(Work work) {
		return productMapper.insertTotal(work);
	}

	@Override
	public int selectEval(Work work) {
		return productMapper.selectEval(work);
	}
}