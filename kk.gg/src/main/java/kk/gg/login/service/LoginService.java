package kk.gg.login.service;

import java.util.List;
import java.util.Map;

import kk.gg.login.domain.C11ReceiptVO;
import kk.gg.login.domain.Login;

public interface LoginService {
	public Login selectID(Login login);
	public List<Map<String, Object>> selectFileList(Map<String, Object> map);
	public List<C11ReceiptVO> getExcelBuild(Map<String, Object> map);
}