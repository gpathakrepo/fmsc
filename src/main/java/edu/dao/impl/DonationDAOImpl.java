package edu.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.dao.DonationDAO;
import edu.model.Donation;
@Repository
public class DonationDAOImpl implements DonationDAO{

	@Autowired
    private SessionFactory sessionFactory;

	public boolean saveDonation(Donation donation) {
		try{
			this.sessionFactory.getCurrentSession().persist(donation);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<Donation> getAllDonations() {
		List<Object[]> objects =  (List<Object[]>) this.sessionFactory.getCurrentSession().createQuery("SELECT d.revealName, d.numberOfMeals from Donation d").list();
		List<Donation> donations = new ArrayList<Donation>(objects.size()/2);
		Donation donation = null;
		for (Object[] obj : objects) {
			donation = new Donation();
			donation.setRevealName((String)obj[0]);
			donation.setNumberOfMeals((Integer)obj[1]);
			donations.add(donation);
		}
		
		return donations;
	}

	public Long getTotalNumberOfMeals() {
		Long noOfMeals = (Long) this.sessionFactory.getCurrentSession().createQuery("SELECT SUM(d.numberOfMeals) from Donation d").uniqueResult();
		
		return noOfMeals;
	}
	
}
