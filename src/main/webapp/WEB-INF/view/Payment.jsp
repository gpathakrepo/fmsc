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
					Reveal Name:<input type="text" name="revealName" ><br/>
					<input type="checkbox" onclick="makeItAnonymus(this)">
					Check this box if you want to be anonymus<br/>
					Donation Location:<select name="payLocation">
						<option value="">Please select Donation location</option>
						<option value="IL">Illinois</option>
						<option value="IA">Iowa</option>
					</select>
					Per Meal price: <input type="text" name="perMealPrice" id="perMealPrice" value="0.22"> <br/>
	            	Number of Meal: <input type="text" name="numberOfMeals" id="quantity" value="10"><br/>
	            	Total: <input type="text" name="totalPrice" id="totalPrice" ><br/>
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
	function makePayment(){
		alert();
		document.paymentForm.action = "makePayment";
		alert("111");
		document.paymentForm.submit();
		alert("222");
	}

    $(document).ready(function() {
    	var totalPrice = parseFloat($("#quantity").val())* parseFloat($("#perMealPrice").val());
    	$("#totalPrice").val(totalPrice);
    	$( "#quantity" ).change(function() {
    		  $( "#totalPrice" ).val($("#quantity").val()* $("perMealPrice").val());
    	});
    	$("#payment").click(function() {
    		$("#paymentForm").attr("action", "makePayment");
    		$("#paymentForm").submit();
    		
    	});
    	
    });
	
</script>

</body>

</html>
