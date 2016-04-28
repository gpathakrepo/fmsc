<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script id="data" type="text/json">
<%=(String) request.getAttribute("jString")%>
</script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="header.jsp"%>
<link rel="stylesheet" href="resources/css/image.css">


</head>

<body>
	<div class="jumbotron">
		<!-- <div class="container">
			<div class="col-xs-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">

					Wrapper for slides
					<div class="carousel-inner">
						<div class="item active"> -->
							<div id="timg"></div>
							
							<!-- <img id="scream" 
								src="resources/img/fmsc1.jpg" alt="" usemap="nMap"
								style="visibility: visible; z-index: -1; position: relative;">
							<map name="nMap">
							  <area shape="rect" coords="100,100,100,126" href="sun.htm" alt="Sun">
							  
							</map> -->
							<!-- <img src="resources/img/fmsc1.jpg"  alt="Planets"
							usemap="#planetmap" style="visibility: hidden; position: absolute;">
							
							<map name="planetmap">
							  <area shape="rect" coords="0,0,82,126" href="sun.htm" alt="Sun">
							 
							</map> -->	
							<div style="margin-left: 450px;margin-top: 20px;">Owned image pixels with donor information:</div><br/>
							<div 
							style="margin-left: 200px;margin-top: -40px;"  >
							<canvas id="myCanvas" width="1000" height="1000"
								style="border:1px solid #d3d3d3;">
								
							</canvas>
							</div>
						</div>
					<!-- </div>
				</div>
			</div>
		</div>
	</div> -->

</body>
<script src="resources/js/jquery.js"></script>
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
		imageObj.id = "image1";
		
		var startStyle = "<div class='center' id='reName' >";
		var endStyle = "</div>";
		var canvas = document.getElementById('myCanvas');
		var ctx = canvas.getContext('2d');
		/* ctx.save();
		ctx.globalAlpha=.5;
		ctx.drawImage(imageObj2, 0, 0); 
		ctx.restore(); */
		
		var totalNoMeals = $("#totalNoOfMeals").val();
		var imgW = imageObj.width;
		var imgH = imageObj.height;

		function reOffset(){
			var BB=canvas.getBoundingClientRect();
				offsetX=BB.left;
			  	offsetY=BB.top;        
			}
			var offsetX,offsetY;
			reOffset();
			window.onscroll=function(e){ reOffset(); }
			window.onresize=function(e){ reOffset(); }
		$("#myCanvas").mousemove(function(e){handleMouseMove(e);});
		$("#myCanvas").mouseout(function(e){$("#reName").html("");});
		var shapes=[];
		var offsetTop = 30;
		var offsetTextTop = 67;
		imageObj.onload = function() {
			canvas.width = imgW;
			canvas.height = imgH;
			ctx.fillStyle = ctx.createPattern(this, "no-repeat");
			totalNoMeals = 10;
			totalNoMeals = 1500;
			var noofrow = parseInt(totalNoMeals / imgW);
			var remaining = totalNoMeals - (noofrow * imgW);
			var j = 1;
			defineAllShapes();
		};
		function defineNames(mouseX,mouseY){
			var endCoordX = 0; 
			var endCoordY = 0;
			var startCoordX = 0;
			var startCoordY = 0;
			var q = JSON.parse($('#data').html());
			ctx.beginPath();
			ctx.moveTo(0, 0);
			jQuery.each(q, function(i, val) {
				endCoordX = parseInt(q[i].numberOfMeals);
				endCoordY = 1; 
				if(endCoordX >= 1000){
					var remain = endCoordX - startCoordX;
					var numberOfRows = parseInt(endCoordX/1000);
					var remaining = (endCoordX+startCoordX) - (numberOfRows * 1000);
					for(var j=1; j <= numberOfRows; j++){
						
							ctx.rect(startCoordX,startCoordY,1000,endCoordY);
							//ctx.rect(10, 10, 100, 100);
							ctx.fill();
							ctx.closePath();
							if(mouseX >= startCoordX  && mouseX <= (endCoordX+startCoordX) && mouseY == (startCoordY )){
								$("#reName").html(startStyle+q[i].revealName+endStyle);
								return false;
							}
						
						startCoordX += parseInt(endCoordX);
						if(startCoordX >= 1000){
							startCoordX = 0;
							startCoordY += 1; 
						}
					}
					if(remaining != 0){
						ctx.rect(startCoordX,startCoordY,remaining,endCoordY);
						ctx.fill();
						ctx.closePath();
						if(mouseX >= startCoordX  && mouseX <= (endCoordX+startCoordX) && mouseY == (startCoordY )){
							$("#reName").html(q[i].revealName);
							return false;
						}
						startCoordX += parseInt(remaining);
					}
				}else {
					ctx.rect(startCoordX,startCoordY,endCoordX,endCoordY);
					//ctx.rect(10, 10, 100, 100);
					ctx.fill();
					ctx.closePath();
					if(mouseX >= startCoordX  && mouseX <= (endCoordX+startCoordX) && mouseY == (startCoordY )){
						$("#reName").html(q[i].revealName);
						return false;
					}
					startCoordX += parseInt(endCoordX);
					if(startCoordX >= 1000){
						startCoordX = 0;
						startCoordY += 1; 
					}
				}
			});
		}
		
				function defineAllShapes() {
					var q = JSON.parse($('#data').html());
					var endCoordX = 0;
					var endCoordY = 0;
					var startCoordX = 0;
					var startCoordY = 0;
					ctx.beginPath();
					ctx.moveTo(0, 0);
					jQuery.each(q, function(i, val) {
						endCoordX = parseInt(q[i].numberOfMeals);
						endCoordY = 1; 
						if(endCoordX >= 1000){
							var remain = endCoordX - startCoordX;
							var numberOfRows = parseInt(endCoordX/1000);
							var remaining = (endCoordX+startCoordX) - (numberOfRows * 1000);
							for(var j=1; j <= numberOfRows; j++){
								
								ctx.rect(startCoordX,startCoordY,1000,endCoordY);
								//ctx.rect(10, 10, 100, 100);
								ctx.fill();
								ctx.closePath();
								
								startCoordX += parseInt(endCoordX);
								if(startCoordX >= 1000){
									startCoordX = 0;
									startCoordY += 1; 
								}
							}
							if(remaining != 0){
								ctx.rect(startCoordX,startCoordY,remaining,endCoordY);
								ctx.fill();
								ctx.closePath();
								startCoordX += parseInt(remaining);
							}
						}else {
							ctx.rect(startCoordX,startCoordY,endCoordX,endCoordY);
							//ctx.rect(10, 10, 100, 100);
							ctx.fill();
							ctx.closePath();
							startCoordX += parseInt(endCoordX);
							if(startCoordX >= 1000){
								startCoordX = 0;
								startCoordY += 1; 
							}
						}
					});
				}
				function handleMouseMove(e) {
					// tell the browser we're handling this event
					e.preventDefault();
					e.stopPropagation();

					mouseX = parseInt(e.clientX - offsetX);
					mouseY = parseInt(e.clientY - offsetY);
					defineNames(mouseX, mouseY);
					if (ctx.isPointInPath(mouseX, mouseY)) {
						defineNames(mouseX, mouseY);
					} else {
						$("#reName").html("");
					}
				}
				
			});
</script>
<!-- Footer -->
<%@ include file="footer.jsp"%>

</html>