package kk.gg.essay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kk.gg.essay.dao.EssayDao;
import kk.gg.login.domain.Work;

@Service
public class EssayServiceImpl implements EssayService{
	@Autowired private EssayDao essayDao;
		
	@Override
	public List<Work> selectWorks(Work work) {
		return essayDao.selectWorks(work);
	}

	@Override
	public Work choiceWork(Work work) {
		return essayDao.choiceWork(work);
	}

	@Override
	public boolean updateScore(Work work) {
		return essayDao.updateScore(work);
	}

	@Override
	public boolean updateTotal(Work work) {
		return essayDao.updateTotal(work);
	}

	@Override
	public List<Work> searchTitleWorks(Work work) {
		return essayDao.searchTitleWorks(work);
	}

	@Override
	public boolean insertScore(Work work) {
		return essayDao.insertScore(work);
	}

	@Override
	public boolean insertTotal(Work work) {
		return essayDao.insertTotal(work);
	}

	@Override
	public int selectEval(Work work) {
		return essayDao.selectEval(work);
	}
}