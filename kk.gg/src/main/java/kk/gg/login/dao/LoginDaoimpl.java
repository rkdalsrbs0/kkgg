package kk.gg.login.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kk.gg.login.dao.mapper.LoginMapper;
import kk.gg.login.domain.C11ReceiptVO;
import kk.gg.login.domain.Login;

@Repository
public class LoginDaoimpl implements LoginDao{
	@Autowired private LoginMapper loginMapper;
	
	@Override
	public Login selectID(Login login) {
		return loginMapper.selectID(login);
	}

	@Override
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) {
		return loginMapper.selectFileList(map);
	}

	@Override
	public List<C11ReceiptVO> excelBuild(Map<String, Object> map) {
		return loginMapper.excelBuild(map);
	}
}
