<%@page import="com.rent.list.web.model.add_Property"%>
<%@page import="java.util.List"%>
<%@page import="com.rent.list.web.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
          	Users user =(Users) session.getAttribute("currentUser");
        	if(user == null){	
        		response.sendRedirect("/views/login.jsp");
        	}
        	else{
          %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rental Listing - View Property</title>
  </head>
  <body>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="/views/css/view_prop.css">
    <%-- <h1>Welcome <%= user.getFullname() %></h1> --%>
    <div class="back-arrow">
        <a href="/views/index.jsp" class="fa fa-arrow-left"></a>
        
        <h1>Welcome To Bluestar <i style="color:royalblue;"><%= user.getFullname() %></i> </h1>
    </div>
    <%
    	List<add_Property> proplist =(List<add_Property>) request.getAttribute("viewproperty");
    	for(add_Property prop: proplist){
    		if(user.getUsername().equals(prop.getOwner())){
    			
    		
    %>
    <div id="container">
      <div class="product-details">
        <h1><%= prop.getTitle() %> (<%= prop.getProp_type() %>)</h1>
        <!-- <span class="hint-star star">
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star-o" aria-hidden="true"></i>
        </span> -->

        <p class="information">
          <%= prop.getDescription() %>
        </p>

        <div class="control">
          <button class="btn">
            <!-- <span class="price">$250</span>
            <span class="shopping-cart"
              ><i class="fa fa-shopping-cart" aria-hidden="true"></i
            ></span> -->
            <span class="buy"> <a  style="text-decoration: none;color:white;" href="/showDetails?id= <%= prop.getId() %>">Get now</a> </span>
          </button>
        </div>
        
        
      </div>
       <a href="/deleteProperty/<%= prop.getId() %>" id="rmv" ><button class="rmv">Remove Property</button></a> 
		<a href="/editProperty?id=<%= prop.getId() %>" id="rmv" style="background-color: royalblue" ><button class="rmv1">Edit Property</button></a>
    

      <div class="product-image">
        <img
          src="data:img/*;base64,<%= prop.getImgBase64() %>"
          alt=""
        />

        <!-- <div class="info">
          <h2>Description</h2>
          <ul>
            <li><strong>Height : </strong>5 Ft</li>
            <li><strong>Shade : </strong>Olive green</li>
            <li><strong>Decoration: </strong>balls and bells</li>
            <li><strong>Material: </strong>Eco-Friendly</li>
          </ul>
        </div> -->
   
      </div>
    </div>
    <%
    	}
    	}
    	for(add_Property prop: proplist){
    		if(!user.getUsername().equals(prop.getOwner())){
    			

    %>
    	<div id="container">
      <div class="product-details">
        <h1><%= prop.getTitle() %> (<%= prop.getProp_type() %>)</h1>
        <!-- <span class="hint-star star">
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star" aria-hidden="true"></i>
          <i class="fa fa-star-o" aria-hidden="true"></i>
        </span> -->

        <p class="information">
          <%= prop.getDescription() %>
        </p>

        <div class="control">
          <button class="btn">
            <!-- <span class="price">$250</span>
            <span class="shopping-cart"
              ><i class="fa fa-shopping-cart" aria-hidden="true"></i
            ></span> -->
            <span class="buy"> <a  style="text-decoration: none;color:white;" href="/showDetails?id= <%= prop.getId() %>">Get now</a> </span>
          </button>
        </div>
      </div>

      <div class="product-image">
        <img
          src="data:img/*;base64,<%= prop.getImgBase64() %>"
          alt=""
        />

        <!-- <div class="info">
          <h2>Description</h2>
          <ul>
            <li><strong>Height : </strong>5 Ft</li>
            <li><strong>Shade : </strong>Olive green</li>
            <li><strong>Decoration: </strong>balls and bells</li>
            <li><strong>Material: </strong>Eco-Friendly</li>
          </ul>
        </div> -->
      </div>
    </div>
    <%
    		}
    	}
    %>
  </body>
</html>
<%
        	}
%>
