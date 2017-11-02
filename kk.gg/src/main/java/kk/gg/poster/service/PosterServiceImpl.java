package kk.gg.poster.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kk.gg.login.domain.Work;
import kk.gg.poster.dao.PosterDao;

@Service
public class PosterServiceImpl implements PosterService{
	@Autowired private PosterDao posterDao;
	
	@Override
	public List<Work> selectWorks(Work work) {
		return posterDao.selectWorks(work);
	}

	@Override
	public Work choiceWork(Work work) {
		return posterDao.choiceWork(work);
	}

	@Override
	public boolean updateScore(Work work) {
		return posterDao.updateScore(work);
	}

	@Override
	public boolean updateTotal(Work work) {
		return posterDao.updateTotal(work);
	}

	@Override
	public List<Work> searchTitleWorks(Work work) {
		return posterDao.searchTitleWorks(work);
	}

	@Override
	public boolean insertScore(Work work) {
		return posterDao.insertScore(work);
	}

	@Override
	public boolean insertTotal(Work work) {
		return posterDao.insertTotal(work);
	}

	@Override
	public int selectEval(Work work) {
		return posterDao.selectEval(work);
	}
}