<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
          
         <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
					Number of Meal: <input type="text" readonly="readonly" name="quantity" id="quantity" value="${donation.numberOfMeals}"><br/>
	            	Total: <input type="text" name="totalPrice" id="totalPrice" readonly="readonly" ><br/>
	            	
					<input type="hidden" name="cmd" value="_xclick">
					<input type="hidden" name="business" value="37842JYHUUEMY">
					<input type="hidden" name="lc" value="US">
					<input type="hidden" name="item_name" value="Meal">
					<input type="hidden" name="item_number" value="001">
					<input type="hidden" name="amount" value="0.22">
					<input type="hidden" name="currency_code" value="USD">
					<input type="hidden" name="button_subtype" value="services">
					<input type="hidden" name="no_note" value="0">
					<input type="hidden" name="cn" value="Add special instructions to the seller:">
					<input type="hidden" name="no_shipping" value="2">
					<input type="hidden" name="rm" value="1">
					<input type="hidden" name="return" value="http://localhost:8080/fmsc/successfulDonation">
					<input type="hidden" name="cancel_return" value="http://localhost:8080/fmsc/cancelDonation">
					<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
					<input type="hidden" name="notify_url" value="http://localhost:8080/fmsc/txnNotify">
					<input  type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
					
					<img  alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
					
				</form>
</body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {
    	var totalPrice = $("#quantity").val()* 0.22;
    	$("#totalPrice").val(totalPrice);
    	$( "#quantity" ).change(function() {
    		  $( "#totalPrice" ).val($("#quantity").val()* 0.22);
    	});
    	
    	
    });
	
</script>
</html>