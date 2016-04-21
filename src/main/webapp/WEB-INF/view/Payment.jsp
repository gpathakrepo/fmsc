<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 
  <%@ include file="header.jsp" %>

	<title>Payment Form</title>
	<link rel="stylesheet" href="resources/css/form-validation.css">
	

</head>


 
    <div class="main-content">

        <!-- You only need this form and the form-validation.css -->

        <form class="form-validation" method="post" action="#">

            <div class="form-title-row">
                <h1>Payment Details</h1>
            </div>
 <br/><br/>
            <div class="form-row form-input-name-row">
            	<form:form></form:form>
            	<form:form action="/makePayment" id="paymentForm"  name="paymentForm" method="post" commandName="donationBean">
            	<input type="hidden" name="action">
            	 <label>
                    <span>Reveal Name:</span>*
					<input type="text" name="revealName" ><br/><br/>
	<input type="checkbox" onclick="makeItAnonymus(this)"> <span>Check this box if you want to be anonymous</span><br/><br/> 
					<span>Donation Location:</span>
					<select name="payLocation"> <br/><br/>
<option value="">Please select Donation location</option>					
<option value="AL">Alabama</option>
<option value="AK">Alaska</option>
<option value="AZ">Arizona</option>
<option value="AR">Arkansas</option>
<option value="CA">California</option>
<option value="CO">Colorado</option>
<option value="CT">Connecticut</option>
<option value="DE">Delaware</option>
<option value="FL">Florida</option>
<option value="GA">Georgia</option>
<option value="HI">Hawaii</option>
<option value="ID">Idaho</option>
<option value="IL">Illinois</option>
<option value="IN">Indiana</option>
<option value="IA">Iowa</option>
<option value="KS">Kansas</option>
<option value="KY">Kentucky</option>
<option value="LA">Louisiana</option>
<option value="ME">Maine</option>
<option value="MD">Maryland</option>
<option value="MA">Massachusetts</option>
<option value="MI">Michigan</option>
<option value="MN">Minnesota</option>
<option value="MS">Mississippi</option>
<option value="MO">Missouri</option>
<option value="MT">Montana</option>
<option value="NE">Nebraska</option>
<option value="NV">Nevada</option>
<option value="NH">New Hampshire</option>
<option value="NJ">New Jersey</option>
<option value="NM">New Mexico</option>
<option value="NY">New York</option>
<option value="NC">North Carolina</option>
<option value="ND">North Dakota</option>
<option value="OH">Ohio</option>
<option value="OK">Oklahoma</option>
<option value="OR">Oregon</option>
<option value="PA">Pennsylvania</option>
<option value="RI">Rhode Island</option>
<option value="SC">South Carolina</option>
<option value="SD">South Dakota</option>
<option value="TN">Tennessee</option>
<option value="TX">Texas</option>
<option value="UT">Utah</option>
<option value="VT">Vermont</option>
<option value="VA">Virginia</option>
<option value="WA">Washington</option>
<option value="WV">West Virginia</option>
<option value="WI">Wisconsin</option>
<option value="WY">Wyoming</option>

					</select><br/><br/>
					<span>Per Meal price:</span> <input type="text" name="perMealPrice" id="perMealPrice" value="0.22"> <br/><br/>
	            	<span>Number of Meal:</span> <input type="text" name="numberOfMeals" id="quantity" value="10"><br/><br/>
	            	<span>Total:</span> <input type="text" name="totalPrice" id="totalPrice" ><br/><br/>
					<br/>
					
					<input type="button" value="Pay" id="payment">
				</form:form>
            
            	<%-- <form:form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
	            	Per Meal price: <div id="mealPrice">$0.22</div> <br/>
	            	Number of Meal: <input type="text" name="quantity" id="quantity" value="10"><br/>
	            	Total: <input type="text" name="totalPrice" id="totalPrice" ><br/>
					<input type="hidden" name="cmd" value="_s-xclick">
					<input type="hidden" name="hosted_button_id" value="LKJVSG8JQNPN4">
					<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
					<div onclick="makePayment()"> <img  alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
					 </div>
				</form:form> --%>
				
		    </div>
            
           
          </form>
            
                   
          <br/><br/>
        

    </div>

 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		var totalPrice = parseFloat($("#quantity").val())* parseFloat($("#perMealPrice").val());
    	$("#totalPrice").val(totalPrice);
    	$( "#quantity" ).change(function() {
    		  $( "#totalPrice" ).val(parseFloat($("#quantity").val())* parseFloat($("#perMealPrice").val()));
    	});
    	$("#payment").click(function() {
    		$("#paymentForm").attr("action", "makePayment");
    		$("#paymentForm").submit();
    		
    	});
    	
    });
	
</script>

</body>
   <%@ include file="footer.jsp" %>
</html>
