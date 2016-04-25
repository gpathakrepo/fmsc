package edu.service.impl;

import java.io.File;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import edu.dao.DonationDAO;
import edu.dao.ProfanityFilterDAO;
import edu.dao.UserDAO;
import edu.model.Donation;
import edu.model.User;
import edu.service.HomePageService;
import isu.ProfanityFilterProxy;

@Service
public class HomePageServiceImpl implements HomePageService {
	@Autowired
	DonationDAO donationDao;
	@Autowired
	UserDAO userDao;
	@Autowired
	ProfanityFilterDAO profanityFilterDao;
	
	@Transactional
	public boolean saveDonation(Donation donation, User user) {
		user = userDao.getUserByUserName(user.getUserName());
		
		donation.setUser(user);
		user.getDonations().add(donation);
		donationDao.saveDonation(donation);
		return false;
	}
	@Transactional
	public String getAllDonationsString() {
		// TODO Auto-generated method stub
		List<Donation> donations = donationDao.getAllDonations();
		String jsonInString = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			jsonInString += mapper.writeValueAsString(donations);
			
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return jsonInString;
	}
	@Transactional
	public Long getTotalNumberOfMeals() {
		// TODO Auto-generated method stub
		Long noOfMeals = donationDao.getTotalNumberOfMeals();
		
		return noOfMeals;
	}
	public Map<String,String[][]> getFmscHomePageImages(String path){
		Map<String,String[][]> map = new TreeMap<String, String[][]>();
		readImages(map, path);
		return map;
	}
	public static void readImages(Map<String,String[][]> map,String path) {
		// File representing the folder that you select using a FileChooser
		
		File dir = new File(path);
	      if (dir.isDirectory()) { // make sure it's a directory
	    	  
	            for (File folder : dir.listFiles()) {
	            	String[][] ar = new String[100][100];
	            	ArrayList<String> al = new ArrayList<String>(folder.list().length);
	            	map.put(folder.getName(), ar);
	            	
	            	for (String fileName : folder.list()) {
	            		al.add(fileName);
					}
	            	Collections.sort(al, new Comparator<String>() {
	                    public int compare(String o1, String o2) {
	                        return extractInt(o1) - extractInt(o2);
	                    }

	                    int extractInt(String s) {
	                        String num = s.replaceAll("\\D", "");
	                        // return 0 if no digits found
	                        return num.isEmpty() ? 0 : Integer.parseInt(num);
	                    }
	                });
	            	int count = 0;
//	            	for (String fileName : al) {
		            	for (int i = 0; i < ar.length; i++) {
		            		
	            			for (int j = 0; j < ar.length; j++) {
	            				ar[i][j] = al.get(count++);
	            				System.out.println(count);
							}
						}
//	            	}
	            		
				}
	        }
	   
	}
	public String checkRevealNameForProfanity(String revealName) {
		int count = profanityFilterDao.getProfanityCountInString(revealName);
		if(count == 0){
			return "";
		}else{
			return "Reveal Name is not appropriate, please change the name";
		}
	}
}
