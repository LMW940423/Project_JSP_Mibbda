package com.web_five.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web_five.dao.joinUsDao;
import com.web_five.dto.userDto;

public class joinUsCommand implements MainCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		userDto dto = new userDto();
		
		String userId = dto.getUserId();
		String userPw = dto.getUserPw2();
		String userName = dto.getUserName();
		String userBrith = dto.getUserBirth();
		String userAddress = dto.getUserAddress();
		String userTel = dto.getUserTel();
		String userEmail = dto.getUserEmail();
		
		joinUsDao dao = new joinUsDao();
		dao.insertUserInfo(userId, userPw, userName, userBrith, userAddress, userTel, userEmail);
		dao.insertCartInfo(userId);
		
	}

}
