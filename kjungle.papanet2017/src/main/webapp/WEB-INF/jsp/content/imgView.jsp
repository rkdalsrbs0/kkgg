<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<title>육아홀릭 - 아빠의 당당한 선택</title>
<link rel="stylesheet" type="text/css" href="/css/reset.css" />

<link rel="stylesheet" type="text/css" href="/css/daddy.css" />
<script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/js/daddy.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none}
.demo {cursor:pointer}
</style>
</head>

<body style="background:#000;">
<div class="image_view">
	<div class="w3-content" style="max-width:800px">
		<c:forEach var="item" items="${contents}" varStatus="i">
			<img class="mySlides" src="/imgPreview.do?id=${item.fileId}&type=" style="width:100%">
		</c:forEach>
	  <div class="w3-row-padding w3-section">
	  	<c:forEach var="item" items="${contents}" varStatus="i">
	  		<div class="w3-col s4">
		  		<img class="demo w3-opacity w3-hover-opacity-off" src="/imgPreview.do?id=${item.fileId}&type=" style="width:100%" onclick="currentDiv(${i.count})">
			</div>
	  	</c:forEach>
	  </div>
	</div>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>


</body>
</html>