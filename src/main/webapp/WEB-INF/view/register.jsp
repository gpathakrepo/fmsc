<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 
  <%@ include file="header.jsp" %>

	<title>Login to FMSC</title>
	<link rel="stylesheet" href="resources/css/form-validation.css">
	

</head>

<script type="text/javascript">
	function registerUser() {
		alert();
		if(validateRegisterForm()){
		
			document.register.action = "registerUser";
			
			document.register.submit();
		}
	}
	function validateRegisterForm(){
		var fname = document.register.firstname.value;
		var lname = document.register.lastname.value;
		var email = document.register.email.value;
		var userName = document.register.userName.value;
		var pass = document.register.password.value;
		var conPass = document.register.confirmPassword.value;
		if(typeof(fname) == 'undefined' || fname == ''){
			document.getElementById('conPassVal').innerHTML = "* Please Enter First Name<br/><br/>";
			return false;
		}else if(typeof(lname) == 'undefined' || lname == ''){
			document.getElementById('conPassVal').innerHTML = "* Please Enter Last Name<br/><br/>";
			return false;
		}else if(typeof(email) == 'undefined' || email == ''){
			document.getElementById('conPassVal').innerHTML = "* Please Enter Email Address<br/><br/>";
			return false;
		}else if(typeof(userName) == 'undefined' || userName == ''){
			document.getElementById('conPassVal').innerHTML = "* Please Enter User Name<br/><br/>";
			return false;
		}else if(typeof(pass) == 'undefined' || pass == ''){
			document.getElementById('conPassVal').innerHTML = "* Please Enter Password<br/><br/>";
			return false;
		}else if(typeof(conPass) == 'undefined' || conPass == ''){
			document.getElementById('conPassVal').innerHTML = "* Please Enter Confirm Password<br/><br/>";
			return false;
		}else if(conPass !== pass){
			document.getElementById('conPassVal').innerHTML = "* Password and Confirm password must be same<br/><br/>";
			return false;
		}
		return true;
	}
</script>


<div class="main-content">

	<!-- You only need this form and the form-validation.css -->
	<form></form>
	<form class="form-validation" id="register" name="register" method="post" >
<input type="hidden" name="action">
		<div style="margin-top: 50px;" class="form-title-row">
			<h1>Sign UP Here</h1>
		</div>
		<br />
		<br />
		<div style="color: red;" id="conPassVal"></div>
		<div class="form-row form-input-name-row">
			
			<label>  <span
				class="req">First Name</span>* <input type="text" name="firstname"><br />
			<br /> <span class="req">Last Name</span>* <input type="text"
				name="lastname"><br />
			<br /> <span class="req">Email</span>* <input type="text"
				name="email"><br />
			<br /> <span class="req">User Name</span>* <input type="text"
				name="userName"><br />
			<br /> <span class="req">Setup A Password</span>* <input
				type="password" name="password"><br />
			<br /> <span class="req">Confirm Password</span>* <input
				type="password" name="confirmPassword"><br />
			</label>	
				
       	     <button id="input_28" type="button" value="submit" class="form-submit-button" onclick="registerUser()">
				Submit
				</button>
		

		</div>
	</form>
	<br />
	
</div>

 <br/><br/>
      
        <%@ include file="footer.jsp" %>
</html>