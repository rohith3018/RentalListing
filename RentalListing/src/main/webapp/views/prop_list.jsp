<%@page import="com.rent.list.web.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
          	Users user =(Users) session.getAttribute("currentUser");
        	if(user == null){	
        		response.sendRedirect("login.jsp");
        	}
          %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rental Listing</title>
    <link rel="stylesheet" href="/views/css/prop_list.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  </head>
  <body>
      <div class="btn">
          <a href="/views/index.jsp" class="fa fa-arrow-left back-arrow"></a>
      </div>
      <div class="container">
          <div class="wrapper">
            <div class="banner-image" style="background-image: url(img/rent.jpg);"> </div>
            <h1>Rent</h1>
            <p>Rent Your property here, <br> while clicking on the Rent now button.</p>
           </div>
           <div class="button-wrapper"> 
             <a href="/views/Rent_form.jsp" class="btn fill">Rent Here</a>
           </div>
             </div>
         </div>
      <div class="container">
          <div class="wrapper">
            <div class="banner-image" style="background-image: url(img/buy.jpg);"> </div>
            <h1>Buy</h1>
            <p>Buy Your property here, <br> while clicking on the Buy now button.</p>
           </div>
           <div class="button-wrapper"> 
             <a href="/views/Buy_form.jsp" class="btn fill">BUY Here</a>
           </div>
             </div>
         </div>
    </div>
  </body>
</html>
