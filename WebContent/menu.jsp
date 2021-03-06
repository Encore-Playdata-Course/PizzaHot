<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<title>PizzaHot</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}

</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i> Â Menu</button>
  <span class="w3-bar-item w3-right">Logo</span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
  <jsp:include page="nav.jsp"/>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:100px;margin-top:43px;">
  <div class="w3-content">
  
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">THE MENU</h1>
	    <div class="w3-row w3-center w3-border w3-border-dark-grey">
      <a href="javascript:void(0)" onclick="openMenu(event, 'Pizza');" id="myLink">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Pizza</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Pasta');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Pasta</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Starter');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Starter</div>
      </a>
    </div>
    
    <div id="Pizza" class="w3-container menu w3-padding-32 w3-white">
    	<c:forEach items="${requestScope.menuAll}" var="data">
    		<c:if test="${data.category=='pizza'}">
				<h1><b>${data.name}</b>
				<c:if test="${data.status!='none'}">
					<span class="w3-tag w3-red w3-round">${data.status}</span>
				</c:if>
				<span class="w3-right w3-tag w3-dark-grey w3-round">$ ${data.price}</span></h1>
      			<p class="w3-text-grey">${data.config}</p>
      			<hr>
      		</c:if>
		</c:forEach>
    </div>

    <div id="Pasta" class="w3-container menu w3-padding-32 w3-white">
      <c:forEach items="${requestScope.menuAll}" var="data">
    	<c:if test="${data.category=='pasta'}">
			<h1><b>${data.name}</b>
			<c:if test="${data.status!='none'}">
				<span class="w3-tag w3-red w3-round">${data.status}</span>
			</c:if>
			<span class="w3-right w3-tag w3-dark-grey w3-round">$ ${data.price}</span></h1>
      		<p class="w3-text-grey">${data.config}</p>
      		<hr>
      	</c:if>
	 </c:forEach>
    </div>


    <div id="Starter" class="w3-container menu w3-padding-32 w3-white">
      <c:forEach items="${requestScope.menuAll}" var="data">
    		<c:if test="${data.category=='starter'}">
				<h1><b>${data.name}</b>
				<c:if test="${data.status!='none'}">
					<span class="w3-tag w3-red w3-round">${data.status}</span>
				</c:if>
				<span class="w3-right w3-tag w3-dark-grey w3-round">$ ${data.price}</span></h1>
      			<p class="w3-text-grey">${data.config}</p>
      			<hr>
      		</c:if>
		</c:forEach>
    </div><br>

  </div>
</div>
<script>
// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-red";
}
document.getElementById("myLink").click();
</script>
</body>
</html>





