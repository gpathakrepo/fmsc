package edu.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.dao.DonationDAO;
import edu.model.Donation;
import edu.model.User;
@Repository
public class DonationDAOImpl implements DonationDAO{

	@Autowired
    private SessionFactory sessionFactory;

	public boolean saveDonation(Donation donation) {
		this.sessionFactory.getCurrentSession().persist(donation);
		return true;
	}
	
}
