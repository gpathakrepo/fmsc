<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Yacht Club</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="million dollar homepage, home, page, million, dollar, pixels, pixel, alex tew, alex, tew, student, entrepreneur, internet, millionaire, university, degree, business, marketing, ideas, advertising, banner, ad, links">
<meta name="description" content="The website of Alex Tew, a 21-year-old entrepreneur, who hopes to pay his way through university by selling 1 million pixels of internet ad space for $1 each.">
<meta name="ROBOTS" content="ALL">
<link rel="stylesheet" type="text/css" href="./The Million_files/style.css">
    <div id="d" style="position: absolute; z-index: 99; left: 726px; top: 404px; border: 1px solid rgb(255, 0, 0); background: rgb(255, 255, 255);">
<span id="xcoord">Tom Corven by Paul Story</span><span id="ycoord"></span>
</div>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="resources/js/jquery-1.js"></script>
    <script type="text/javascript" src="resources/js/widgets.js"></script>
    <!--Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Belgrano|Courgette&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="resources/js/Vague.js"></script>
    <!--Bootshape-->
    <link href="resources/css/bootshape.css" rel="stylesheet">
    <script type="text/javascript">
    	$(document).ready(){
    		
    	}
    	
    
    </script>
      <style type="text/css">
    .content {
    width: 70%;
    height: 70%;
    border:2px solid;
    border-radius:20px;
    
    top: 15%;
    left: 15%;
   
    background-color: rgba(168, 235, 255, 0.2);
    /*filter: blur(2px); 
-moz-filter: blur(2px);
-o-filter: blur(2px); 
-ms-filter: blur(2px);*/
}
.background {
    width:100%;
    height:100%;
    /* background-image:url('http://www.travel.com.hk/region/time_95.jpg'); */
    
    
    -webkit-filter: blur(10px);
    /*-webkit-filter: blur(2px);*/
}
.blurr{
        left:0;
        right:0;
        margin-left:auto;
        margin-right:auto;
        content: "text";
        position: absolute;
        height: 100%; width: 450px;
        background: url(http://lorempixel.com/420/255)  no-repeat center center fixed;
        background-size: cover;
        z-index: -1; /* Keep the background behind the content */
        
        /* don't forget to use the p
/* .bluredBackground {
    width:100%;
    height:100%;
    display:block;
    
    z-index:1;
    position:absolute;
    top:-20%;
    left:-20%;
    padding-left:20%;
    padding-top:20%;
    -webkit-filter: blur(10px);
} */
/* .mask {
    width: 70%;
    height: 70%;
    border:2px solid;
    border-radius:20px;
    position: fixed;
    top: 15%;
    left: 15%;
    z-index:10;
    overflow:hidden;
    -webkit-filter: blur(0px);
} */
</style>
  </head>
  <body>
    <!-- Navigation bar -->
    <!-- <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Yacht Club</a>
        </div>
        <nav role="navigation" class="collapse navbar-collapse navbar-right">
          <ul class="navbar-nav nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown">
              <a data-toggle="dropdown" href="#" class="dropdown-toggle">Yachts <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="active"><a href="#">Item 1</a></li>
                <li><a href="#">Item 2</a></li>
                <li><a href="#">Item 3</a></li>
                <li class="divider"></li>
                <li><a href="#">All Items</a></li>
              </ul>
            </li>
            <li><a href="#">Destinations</a></li>
            <li><a href="#">License</a></li>
            <li><a href="#">Contacts</a></li>
          </ul>
        </nav>
      </div>
    </div> -->
      <%@ include file="header.jsp" %>
    <!-- End Navigation bar -->

    <!-- Slide gallery -->
    <div class="jumbotron">
      <div class="container">
        <div class="col-xs-12">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
          	
               <%-- 	<c:forEach var="imgFolder" items="${imagesMap}">
              	 <c:forEach items="${imgFolder.value}" begin="0" var="row" varStatus="x">
				      <c:forEach items="${row}" var="cell" varStatus="y">
				        <img src="resources/img/fmsc/${imgFolder.key}/${cell}" alt="" >
				         
				      </c:forEach>
				    
				  </c:forEach>
				    
				     
				</c:forEach> --%>
              	
				    <img  src="resources/img/fmsc1.jpg" alt="" usemap="#planetmap" > 
				
			<map name="planetmap">
				<area shape="rect" coords="0,0,10,10" onmouseover="d(this)" onmouseout="e(this)" title="gaurav" alt="gaurav" onfocus="ggg(this)">
			  	<area shape="rect" coords="22,83,126,125" title="gaurav" alt="gaurav" onfocus="ggg(this)">
				<area class="a1" shape="circle" title="gaurav12" coords="73,168,32" alt="PHP Tutorial" href="#"/>
			</map>
			<div class="carousel-caption">
              </div>
              
            </div>
          	
          </div>
          <!-- Controls -->
         <!--  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a> -->
        </div>
        </div>
      </div><!-- End Slide gallery -->
    </div>

    <!-- Thumbnails -->
    <div class="container thumbs">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="resources/img/pic1.jpg" alt="" class="img-responsive">
          <div class="caption">
            <h3 class="">Motor</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="btn-toolbar text-center">
              <a href="#" role="button" class="btn btn-primary pull-right">Details</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="resources/img/pic2.jpg" alt="" class="img-responsive">
          <div class="caption">
            <h3 class="">Luxury</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="btn-toolbar text-center">
              <a href="#" role="button" class="btn btn-primary pull-right">Details</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img src="resources/img/pic3.jpg" alt="" class="img-responsive">
          <div class="caption">
            <h3 class="">Sailboats</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="btn-toolbar text-center">
              <a href="#" role="button" class="btn btn-primary pull-right">Details</a>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Thumbnails -->
    <!-- Content -->
    <div class="container">
      <div class="">
        <h3 class="">Welcome</h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>
      </div>
      <div class="row">
        <div class="col-sm-8">
          <h3 class="">About</h3>
          <img src="resources/img/about.jpg" alt="" class="img-responsive">
          <br>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries. Lorem Ipsum is simply dummy text of.</p>
        </div>
        <div class="col-sm-4">
          <h3 class="">News & Events</h3>
          <div class="event">
            <div class="text-right date">01/22/2014</div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industr y. Lorem Ipsum has been the industry's standard dummy text ever since the 1500.</p>
            <div class="text-right">
              <a href="#">See more...</a>
            </div>
          </div>
          <div class="event">
            <div class="text-right date">01/22/2014</div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industr y. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="text-right">
              <a href="#">See more...</a>
            </div>
          </div>
          <div class="event">
            <div class="text-right date">01/22/2014</div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industr y. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            <div class="text-right">
              <a href="#">See more...</a>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Content -->
    <!-- Footer -->
    <div class="footer text-center">
        <p>&copy; 2014 Yacht Club. All Rights Reserved. Proudly created by <a href="http://bootshape.com">Bootshape.com</a></p>
    </div><!-- End Footer -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootshape.js"></script>
  </body>
</html>
