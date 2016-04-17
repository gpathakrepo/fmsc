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
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
         
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
            <div id="timg"></div>
  <img id="scream" src="resources/img/fmsc1.jpg" alt=""  usemap="#planetmap"  style="visibility: visible;z-index: -1;position: relative; "> 
  <canvas  id="myCanvas" 
style="border:1px solid #d3d3d3;">
Your browser does not support the HTML5 canvas tag.
</canvas>
</div></div></div></div></div></div>

     </body>
       <script>
  
var imageObj = new Image();
imageObj.src = 'resources/img/fmsc1.jpg';
var canvas = document.getElementById('myCanvas');
canvas.width  = 1500;
canvas.height  = 1125;
var ctx = canvas.getContext('2d');
imageObj.onload = function() {
	ctx.drawImage(imageObj, 0, 0);
  	ctx.fillRect(10, 0, 10, 10);
 	ctx.fillRect(20, 0, 10, 10);
 	ctx.fillRect(20, 0, 10, 10);
};
canvas.width  = imageObj.width;
canvas.height  = imageObj.height;


</script>
   <!-- Footer -->
    <%@ include file="footer.jsp" %>
    
</html>