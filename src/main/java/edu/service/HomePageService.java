package edu.service;

import java.util.Map;

import edu.model.Donation;
import edu.model.User;

public interface HomePageService {
	Map<String, String[][]> getFmscHomePageImages(String path);
	boolean saveDonation(Donation donation,User user);
	String getAllDonationsString();
	Long getTotalNumberOfMeals(); 
}
