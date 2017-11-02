package kk.gg.essay.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kk.gg.essay.dao.mapper.EssayMapper;
import kk.gg.login.domain.Work;

@Repository
public class EssayDaoImpl implements EssayDao{
	@Autowired private EssayMapper essayMapper;
	
	@Override
	public List<Work> selectWorks(Work work) {
		return essayMapper.selectWorks(work);
	}

	@Override
	public Work choiceWork(Work work) {
		return essayMapper.choiceWork(work);
	}

	@Override
	public boolean updateScore(Work work) {
		return essayMapper.updateScore(work);
	}

	@Override
	public boolean updateTotal(Work work) {
		return essayMapper.updateTotal(work);
	}

	@Override
	public List<Work> searchTitleWorks(Work work) {
		return essayMapper.searchTitleWorks(work);
	}

	@Override
	public boolean insertScore(Work work) {
		return essayMapper.insertScore(work);
	}

	@Override
	public boolean insertTotal(Work work) {
		return essayMapper.insertTotal(work);
	}

	@Override
	public int selectEval(Work work) {
		return essayMapper.selectEval(work);
	}
}