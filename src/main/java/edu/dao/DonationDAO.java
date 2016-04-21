package edu.dao;

import java.util.List;

import edu.model.Donation;
import edu.model.User;

public interface DonationDAO {
	public boolean saveDonation(Donation donation);
	public List<Donation> getAllDonations();
	public Long getTotalNumberOfMeals();
}
