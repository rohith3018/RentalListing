<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Design by foolishdeveloper.com -->
  <title>Rental Listing - Signup</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <!--Stylesheet-->
  <style media="screen">
    *,
    *:before,
    *:after {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }

    body {
      background-color: #080710;
    }

    .background {
      width: 430px;
      height: 520px;
      position: absolute;
      transform: translate(-50%, -50%);
      left: 50%;
      top: 50%;
    }

    .background .shape {
      height: 200px;
      width: 200px;
      position: absolute;
      border-radius: 50%;
    }

    .shape:first-child {
      background: linear-gradient(#1845ad,
          #23a2f6);
      left: -80px;
      top: -80px;
    }

    .shape:last-child {
      background: linear-gradient(to right,
          #ff512f,
          #f09819);
      right: -30px;
      bottom: -80px;
    }

    form {
      /* height: 520px; */
      width: 500px;
      background-color: rgba(255, 255, 255, 0.13);
      position: absolute;
      transform: translate(-50%, -50%);
      top: 50%;
      left: 50%;
      border-radius: 10px;
      backdrop-filter: blur(10px);
      border: 2px solid rgba(255, 255, 255, 0.1);
      box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
      padding: 40px 35px;
    }

    form * {
      font-family: 'Poppins', sans-serif;
      color: #ffffff;
      letter-spacing: 0.5px;
      outline: none;
      border: none;
    }

    form h3 {
      font-size: 32px;
      font-weight: 500;
      line-height: 42px;
      text-align: center;
    }

    label {
      display: block;
      margin-top: 30px;
      font-size: 14px;
      font-weight: 500;
    }

    input {
      display: block;
      height: 35px;
      width: 100%;
      background-color: rgba(255, 255, 255, 0.07);
      border-radius: 3px;
      padding: 0 10px;
      margin-top: 28px;
      font-size: 16px;
      font-weight: 300;
    }

    ::placeholder {
      color: #e5e5e5;
    }

    button {
      margin-top: 30px;
      width: 100%;
      background-color: #ffffff;
      color: #080710;
      padding: 12px 0;
      font-size: 16px;
      font-weight: 600;
      border-radius: 5px;
      cursor: pointer;
    }

    .social {
      margin-top: 30px;
      display: flex;
    }

    .social div {
      background: red;
      width: 150px;
      border-radius: 3px;
      padding: 5px 10px 10px 5px;
      background-color: rgba(255, 255, 255, 0.27);
      color: #eaf0fb;
      text-align: center;
    }

    .social div:hover {
      background-color: rgba(255, 255, 255, 0.47);
    }

    .social .fb {
      margin-left: 25px;
    }

    .social i {
      margin-right: 4px;
    }
    .acc{
        text-align: center;
        margin-top: 10px;
    }
    .acc a{
        text-decoration: none;
        color: red;
        font-weight: bold;
        cursor: pointer;
        font-size: 18px;
    }
    h3 a{
        text-decoration: none;
        font-size: 27px;
        transform: translateX(-20px);
        border: 2px solid white;
        padding: 4px 6px;
        border-radius: 50%;
    }
  </style>
</head>

<body>
  <form action="/signup" id="form" method="post">
    <h3><a href="/views/index.jsp" class="fa fa-arrow-left"></a> Create Account Here</h3>
    <input type="text" placeholder="Enter Name" id="name" name="fullname" required>
    <input type="text" placeholder="Username" id="uname" name="username" required>
    <input type="password" placeholder="Password" id="password" name="password" required>
    <input type="password" placeholder="Confirm Password" id="cpassword" name="cpassword" required>
    <input type="text" placeholder="Phone" id="phone" name="phoneno" required>
    <input type="text" placeholder="Email" id="email" name="email" required>
    <button id="btn" disabled="disabled">Sign Up &nbsp;&nbsp;<i class=" fa fa-lock" id="i"></i> </button>
    <p class="acc"  >Already have a Account? <a href="/views/login.jsp">Log In </a></p>
  </form>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"
        integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
        $(document).ready(function () {
            jQuery.validator.addMethod("noSpace", function (value, element) {
                return value.indexOf(" ") < 0 && value != "";
            }, "No space please and don't leave it empty");
            jQuery("#form").validate({
            	rules: {
            		fullname: {
                        minlength: 2,
                        maxlength: 40,
                    },
                    username: {
                        minlength: 2,
                        maxlength: 15,
                        noSpace: true,
                    },
                    password:{
                    	minlength: 8,
                        maxlength: 16,
                    },
                    cpassword:{
                    	minlength: 8,
                        equalTo: "#password",
                    },
                    phoneno:{
                    	minlength: 10,
                        maxlength: 10,
                        noSpace: true,
                    }
            	}
            	
            });
            $('#form').on('keyup', function () { // fires on every keyup & blur
                if ($('#form').valid()) {                   // checks form for validity
                    $('#btn').prop('disabled', false);
                    $('#btn').css({
                        "border": "none",
                        "color": "white",
                        "background": "linear-gradient(45deg,rgba(253, 101, 133, 1),rgba(255, 211, 165, 1))",
                    })
                    $('#i').css({
                        "display": "none",
                    })
                    // enables button
                } else {
                    $('#btn').prop('disabled', 'disabled');
                    $('#btn').css({
                        "border": "2px solid white",
                        "color": "white",
                        "background": "grey",
                        "font-weight": "bold"
                    })
                    $('#i').css({
                        "display": "inline",
                        "color": "white",
                        "margin-left": "10px"
                    })
                    // disables button
                }
            }); 
        });
        
        </script>
</body>

</html>