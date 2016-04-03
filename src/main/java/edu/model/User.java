package edu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="USERS")
public class User {
	 	@Id
	    @Column(name="USER_ID")
	    @GeneratedValue
	    private Integer userId;
	     
	    @Column(name="FIRSTNAME")
	    private String firstname;
	 
	    @Column(name="LASTNAME")
	    private String lastname;
	    
	    @Column(name="USER_NAME")
	    private String userName;
	 
	    @Column(name="EMAIL")
	    private String email;
	     
	    @Column(name="TELEPHONE")
	    private String telephone;
	    
	    @Column(name="MOBILE")
	    private String mobile;
	    
	    @Column(name="PASSWORD")
	    private String password;
	    
	    @Column(name="ADDRESS")
	    private String address;
	    
	    @Column(name="POSTL_CD")
	    private String postalCode;
	    
	    @Column(name="CITY")
	    private String city;
	    
	    @Column(name="STATE")
	    private String state;

		public Integer getUserId() {
			return userId;
		}

		public void setUserId(Integer userId) {
			this.userId = userId;
		}

		public String getFirstname() {
			return firstname;
		}

		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}

		public String getLastname() {
			return lastname;
		}

		public void setLastname(String lastname) {
			this.lastname = lastname;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getTelephone() {
			return telephone;
		}

		public void setTelephone(String telephone) {
			this.telephone = telephone;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getPostalCode() {
			return postalCode;
		}

		public void setPostalCode(String postalCode) {
			this.postalCode = postalCode;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}
	    
//		@ManyToOne
//		@JoinColumn(name="USER_TYP_ID")
//		private UserType userType;
}
