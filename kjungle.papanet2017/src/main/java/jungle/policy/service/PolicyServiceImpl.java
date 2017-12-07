package jungle.policy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jungle.policy.dao.PolicyDao;
import jungle.policy.domain.Support;

@Service
public class PolicyServiceImpl implements PolicyService{
	@Autowired private PolicyDao policyDao;
	
	@Override
	public List<Support> selectSupport() {
		return policyDao.selectSupport();
	}
}