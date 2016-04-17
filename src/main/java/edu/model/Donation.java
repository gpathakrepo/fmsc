package edu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="DONATION")
public class Donation implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column(name="D_ID")
    @GeneratedValue
	private long donationId;
	
	@Column(name="R_NAME")
	private String revealName;
	
	@Column(name="NO_OF_MEAL")
	private int numberOfMeals;
	
	@Column(name="PER_MEAL_PRICE")
	private double perMealPrice;
	
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private User user;
	
	public long getDonationId() {
		return donationId;
	}
	public void setDonationId(long donationId) {
		this.donationId = donationId;
	}
	public String getRevealName() {
		return revealName;
	}
	public void setRevealName(String revealName) {
		this.revealName = revealName;
	}
	public int getNumberOfMeals() {
		return numberOfMeals;
	}
	public void setNumberOfMeals(int numberOfMeals) {
		this.numberOfMeals = numberOfMeals;
	}
	public double getPerMealPrice() {
		return perMealPrice;
	}
	public void setPerMealPrice(double perMealPrice) {
		this.perMealPrice = perMealPrice;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
