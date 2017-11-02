package kk.gg.poster.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kk.gg.login.domain.Work;
import kk.gg.poster.dao.mapper.PosterMapper;

@Repository
public class PosterDaoImpl implements PosterDao{
	@Autowired private PosterMapper posterMapper;
	
	@Override
	public List<Work> selectWorks(Work work) {
		return posterMapper.selectWorks(work);
	}

	@Override
	public Work choiceWork(Work work) {
		return posterMapper.choiceWork(work);
	}

	@Override
	public boolean updateScore(Work work) {
		return posterMapper.updateScore(work);
	}

	@Override
	public boolean updateTotal(Work work) {
		return posterMapper.updateTotal(work);
	}

	@Override
	public List<Work> searchTitleWorks(Work work) {
		return posterMapper.searchTitleWorks(work);
	}

	@Override
	public boolean insertScore(Work work) {
		return posterMapper.insertScore(work);
	}

	@Override
	public boolean insertTotal(Work work) {
		return posterMapper.insertTotal(work);
	}

	@Override
	public int selectEval(Work work) {
		return posterMapper.selectEval(work);
	}
}