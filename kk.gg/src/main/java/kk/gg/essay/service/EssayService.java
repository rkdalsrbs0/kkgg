package kk.gg.essay.service;

import java.util.List;

import kk.gg.login.domain.Work;

public interface EssayService {
	List<Work> selectWorks(Work work);
	Work choiceWork(Work work);
	boolean updateScore(Work work);
	boolean updateTotal(Work work);
	List<Work> searchTitleWorks(Work work);
	boolean insertScore(Work work);
	boolean insertTotal(Work work);
	int selectEval(Work work);
}
