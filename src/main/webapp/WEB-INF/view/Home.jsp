<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 
  <%@ include file="header.jsp" %>
  <link rel="stylesheet" href="resources/css/image.css">
  

</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<div class="col-xs-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<div id="timg"></div>
							<canvas id="myCanvas" width="400" height="500"
								style="border:1px solid #d3d3d3;"> Your browser does
							not support the HTML5 canvas tag. </canvas>
							<img id="scream" width="1000" height="1000"
								src="resources/img/fmsc1.jpg" alt="" 
								style="visibility: hidden; z-index: -1; position: absolute;">

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<form name="jsonForm">
	<input type="hidden" value="${jString}" name="jString"
		id="jString"> <input type="hidden" value="${totalNoOfMeals}"
		name="totalNoOfMeals" id="totalNoOfMeals">
</form>
<script>
	$(document).ready(function() {

		var imageObj = new Image();
		imageObj.src = 'resources/img/fmsc1.jpg';
		imageObj.width = 1000;
		imageObj.height = 1000;
		var canvas = document.getElementById('myCanvas');
		canvas.width = 1000;
		canvas.height = 1000;
		var ctx = canvas.getContext('2d');
		var totalNoMeals = $("#totalNoOfMeals").val();
		
		var imgW = imageObj.width;
		var imgH = imageObj.height;

		imageObj.onload = function() {
			ctx.drawImage(imageObj, 0, 0);
			//totalNoMeals = 15100;
			ctx.fillStyle = "#D3D3D3";
			var noofrow = parseInt(totalNoMeals / imgW);
			var remaining = totalNoMeals - (noofrow * imgW);
			/* alert(noofrow);
			alert(remaining); */

			for (var i = noofrow; i < imgH; i++) {
				if (i == noofrow) {
					ctx.fillRect(remaining, i, imgW - remaining, 1);
				} else {
					ctx.fillRect(0, i, imgW, 1);
				}

			}
			var x = JSON.parse($('#data').html());
			jQuery.each(x, function(i, val) {
				//alert(x[i].revealName);
				//alert(x[i].numberOfMeals);
			});
		};

	});
</script>
   <!-- Footer -->
    <%@ include file="footer.jsp" %>
    
</html>