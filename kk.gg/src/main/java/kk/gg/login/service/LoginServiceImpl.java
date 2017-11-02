package kk.gg.login.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kk.gg.login.dao.LoginDao;
import kk.gg.login.domain.C11ReceiptVO;
import kk.gg.login.domain.Login;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired private LoginDao loginDao;
	
	@Override
	public Login selectID(Login login) {
		return loginDao.selectID(login);
	}

	@Override
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) {
		return loginDao.selectFileList(map);
	}

	@Override
	public List<C11ReceiptVO> getExcelBuild(Map<String, Object> map) {
		return loginDao.excelBuild(map);
	}
}