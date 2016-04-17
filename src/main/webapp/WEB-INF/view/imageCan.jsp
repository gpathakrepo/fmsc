<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
  <head>
    <style>
      body {
        margin: 0px;
        padding: 0px;
      }
    </style>
  </head>
  <body>
    <canvas id="myCanvas" width="578" height="400"></canvas>
    <script>
      var canvas = document.getElementById('myCanvas');
      var context = canvas.getContext('2d');
      var imageObj = new Image();

      imageObj.onload = function() {
        context.drawImage(imageObj, 0, 0);
        context.fillRect(10, 0, 10, 10);
        context.fillRect(20, 0, 10, 10);
        context.fillRect(20, 0, 10, 10);
      };
      imageObj.src = 'resources/img/fmsc1.jpg';
    </script>
  </body>
</html>  