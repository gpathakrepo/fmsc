package edu.dao.impl;

import java.rmi.RemoteException;

import edu.dao.ProfanityFilterDAO;
import isu.ProfanityFilterProxy;

public class ProfanityFilterDAOImpl implements ProfanityFilterDAO{
 public int getProfanityCountInString(String revealName){
	 int count = 0;
	 ProfanityFilterProxy proxy = new ProfanityFilterProxy("http://gfish.it.ilstu.edu:8080/ProfanityFilter/ProfanityFilter");
		try {
			count = proxy.getProfanityCount(revealName);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
 }
}
