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


 
    <div class="main-content">

        <!-- You only need this form and the form-validation.css -->

        <form class="form-validation" method="post" action="#">

            <div class="form-title-row">
                <h1>Login Form</h1>
            </div>
 <br/><br/>
            <div class="form-row form-input-name-row">

      <label>
                    <span>User Name</span>
                    <input type="text" name="name"><br/><br/>
                
					<span>Password</span>
                    <input type="password" name="password"><br/><br/>
                    
                    <li class="form-line" data-type="control_button" id="id_28">
       	 <div id="cid_28" class="form-input-wide">
          <div style="margin-left:80px" class="form-buttons-wrapper">
            <button id="input_28" type="submit" class="form-submit-button">
            Submit
            </button>
          </div>
        </div>
      </li>
      </label>
      
      </div><br/><br/>
      
        <%@ include file="footer.jsp" %>
        
</html>