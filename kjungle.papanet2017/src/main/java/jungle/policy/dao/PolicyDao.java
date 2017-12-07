package jungle.policy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jungle.policy.dao.mapper.PolicyMapper;
import jungle.policy.domain.Support;

@Repository
public class PolicyDao {
	@Autowired private PolicyMapper policyMapper;
	
	public List<Support> selectSupport(){
		return policyMapper.selectSupport();
	}
}