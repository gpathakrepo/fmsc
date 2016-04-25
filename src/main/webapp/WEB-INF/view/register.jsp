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
		
		document.register.action = "registerUser";
		
		document.register.submit();
	}
</script>


<div class="main-content">

	<!-- You only need this form and the form-validation.css -->
	<form></form>
	<form class="form-validation" id="register" name="register" method="post" >
<input type="hidden" name="action">
		<div class="form-title-row">
			<h1>Sign UP Here</h1>
		</div>
		<br />
		<br />
		<div class="form-row form-input-name-row">

			<label>  <span
				class="req">First Name</span>* <input type="text" name="firstname"><br />
			<br /> <span class="req">Last Name</span>* <input type="text"
				name="lastname"><br />
			<br /> <span class="req">Username</span>* <input type="text"
				name="userName"><br />
			<br /> <span class="req">Setup A Password</span>* <input
				type="password" name="password"><br />
			<br /> <span class="req">Confirm Password</span>* <input
				type="password" name="confirmPassword"><br />
			</label>	
				
       	 
        
            <button id="input_28" type="submit" value="submit" class="form-submit-button" onclick="registerUser()">
				Submit
				</button>
		

		</div>
	</form>
	<br />
	
</div>

 <br/><br/>
      
        <%@ include file="footer.jsp" %>
</html>