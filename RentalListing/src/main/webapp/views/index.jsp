<%@page import="com.rent.list.web.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rental Listing</title>
    <link rel="stylesheet" href="/views/css/index.css" />
    
  </head>
  <body>
    <div class="page-wrapper">
      <div class="nav-wrapper">
        <div class="grad-bar"></div>
        <%
          	Users user =(Users) session.getAttribute("currentUser");
        	if(user == null){	
          %>
        <nav class="navbar">
          <img
            src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c8/Bluestar_%28bus_company%29_logo.svg/1280px-Bluestar_%28bus_company%29_logo.svg.png"
            alt="Company Logo"
          />

          
          <ul class="nav no-search">
            <li class="nav-item"><a href="/views/index.jsp">Home</a></li>
            <li class="nav-item"><a href="/views/contact.jsp">Contact Us</a></li>
            <li class="nav-item"><a href="/views/signup.jsp" class="acc">Signup</a></li>
            <li class="nav-item"><a href="/views/login.jsp" class="acc">Login</a></li>
            <!-- <i class="fas fa-search" id="search-icon"></i>
            <input class="search-input" type="text" placeholder="Search.." /> -->
          </ul>
        </nav>
        <%
        	}
        	else{
        %><nav class="navbar">
          <img
            src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c8/Bluestar_%28bus_company%29_logo.svg/1280px-Bluestar_%28bus_company%29_logo.svg.png"
            alt="Company Logo"
          />
          <div class="menu-toggle" id="mobile-menu">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
          </div>
          
          <ul class="nav no-search">
            <li class="nav-item"><a href="/views/index.jsp">Home</a></li>
            <!-- <li class="nav-item"><a href="#">About</a></li> -->
            <li class="nav-item"><a href="/views/contact.jsp">Contact Us</a></li>
            <li class="nav-item"><a href="/logout" class="acc">Log out</a></li>
            <!-- <i class="fas fa-search" id="search-icon"></i>
            <input class="search-input" type="text" placeholder="Search.." /> -->
          </ul>
        </nav>
        <%
        	}
        %>
      </div>
      <section class="headline">
        <h1>Rent Properties in Mumbai</h1>
        <p>Rent quickly, safely and don't pay excessive agencies fees!!</p>
        <div class="btn">
          <a href="/propertyview">View Properties</a>
          <a href="/views/prop_list.jsp">Property Listing</a>
        </div>
      </section>
      <section class="about">
       
      </section>
    </div>

    <script>
      $("#search-icon").click(function () {
        $(".nav").toggleClass("search");
        $(".nav").toggleClass("no-search");
        $(".search-input").toggleClass("search-active");
      });

      $(".menu-toggle").click(function () {
        $(".nav").toggleClass("mobile-nav");
        $(this).toggleClass("is-active");
      });
    </script>
  </body>
</html>
