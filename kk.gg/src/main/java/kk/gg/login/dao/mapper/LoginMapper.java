package kk.gg.login.dao.mapper;

import java.util.List;
import java.util.Map;

import kk.gg.login.domain.C11ReceiptVO;
import kk.gg.login.domain.Login;

public interface LoginMapper {
	public Login selectID(Login login);
	public List<Map<String, Object>> selectFileList(Map<String, Object> map);
	public List<C11ReceiptVO> excelBuild(Map<String, Object> map);
}