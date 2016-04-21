package edu.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.dao.UserDAO;
import edu.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public User getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return (User) this.sessionFactory.getCurrentSession()
				.createQuery("from User where userName ='" + userName + "'").uniqueResult();
	}

	public Boolean registerUser(User userBean) {
		try {
			this.sessionFactory.getCurrentSession().persist(userBean);
			return true;
		} catch (Exception e) {
			return false;
		}

	}

}
