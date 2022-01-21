package kr.co.mlec.member.service;

import kr.co.mlec.member.dao.LoginDAO;
import kr.co.mlec.member.vo.LoginVO;

public class LoginService {
	
	private LoginDAO loginDAO;
	
	
	public LoginService() {
		loginDAO = new LoginDAO();
	}
	
	
	public  LoginVO login(LoginVO loginVO){
	
		return loginDAO.login(loginVO);
	}

}
