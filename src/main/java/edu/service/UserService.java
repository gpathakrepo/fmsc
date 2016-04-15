package edu.service;

import edu.model.User;

public interface UserService {
	public User login(User userBean);
	public boolean registerUser(User userBean);
}
