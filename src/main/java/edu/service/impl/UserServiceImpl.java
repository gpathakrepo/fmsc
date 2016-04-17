package edu.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.dao.UserDAO;
import edu.model.User;
import edu.service.UserService;



@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDao;
	
	
	@Transactional
	public User login(User userBean) {
		User user = null;
		String userName = StringUtils.trim(userBean.getUserName());
		String password = StringUtils.trim(userBean.getPassword());
		
		if(StringUtils.isNotBlank(userName) && StringUtils.isNotBlank(password)){
			user = userDao.getUserByUserName(userName);
			if(user != null){
				if(password.equals(user.getPassword())){
					return user;
				}
			}
		}
		
		return user;
	}
	
	@Transactional
	public boolean registerUser(User userBean) {
		
		
		Boolean registered= userDao.registerUser(userBean);
		
		if(registered){
			return true;
		
		}
		
		return false;
	}
}
