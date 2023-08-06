<%-- 
    Document   : index.jsp
    Created on : Mar 8, 2023, 10:01:38 PM
    Author     : thang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link   rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@200;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
        <title>Ecommerce | Recover Password</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body{
                font-family: 'Raleway', sans-serif;
            }

            .navbar{
                display: flex;
                align-items: center;
                padding: 20px;
            }

            nav{
                flex: 1;
                text-align: right;
            }

            nav ul{
                display: inline-block;
                list-style-type: none;
            }

            nav ul li{
                display: inline-block;
                margin-right: 20px;
            }

            a{
                text-decoration: none;
                color: #555;
            }

            p{
                color: #555;
            }

            .container{
                max-width: 1300px;
                margin: auto;
                padding-left: 25px;
                padding-right: 25px;
            }

            .row{
                display: flex;
                align-items: center;
                flex-wrap: wrap;
                justify-content: space-around;
            }

            .col-2{
                flex-basis: 50%;
                min-width: 300px;
            }


            .col-2 img{
                max-width: 100%;
                padding: 50px 0;
            }

            .col-2 h1{
                font-size: 50px;
                line-height: 60px;
                margin: 25px 0;
            }

            .btn{
                display: inline-block;
                background: #ff523b;
                color: #fff;
                padding: 8px 30px;
                margin: 30px 0;
                border-radius: 30px;
                transition: background 0.5s;
            }

            .btn:hover{
                background: #563434;
            }

            .header{
                background: radial-gradient(#fff,#ffd6d6);
            }

            .header .row{
                margin-top: 70px;
            }

            .categories{
                margin: 70px 0;
            }

            .col-3{
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom: 30px;
            }

            .col-3 img{
                width: 100%;
            }

            .col-3 h3{
                color: #ff523b;
                text-align: center;
            }

            .small-container{
                max-width: 1080px;
                margin: auto;
                padding-left: 25px;
                padding-right: 25px;
            }

            .col-4{
                flex-basis: 25px;
                padding: 10px;
                min-width: 200px;
                margin-bottom: 50px;
                transition: transform 0.5s;
            }

            .col-4 img{
                width: 100%;
            }

            .title{
                text-align: center;
                margin: 0 auto 80px;
                position: relative;
                line-height: 60px;
                color: #555;
            }

            .title::after{
                content: '';
                background: #ff523b;
                width: 80px;
                height: 5px;
                border-radius: 5px;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
            }

            h4{
                color: #555;
                font-weight: normal;
            }

            .col-4 p{
                font-size: 14px;

            }

            .col-4:hover{
                transform: translateY(-5px);
            }

            /*-------footer-----*/

            .footer{
                background: #000;
                color: #8a8a8a;
                font-size: 14px;
                padding: 60px 0 20px;
            }

            .footer p{
                color: #8a8a8a;
            }

            .footer h3{
                color: #fff;
                margin-bottom: 20px;
            }

            .footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4{
                min-width: 250px;
                margin-bottom: 20px;
            }

            .footer-col-1{
                flex-basis: 30%;
            }

            .footer-col-2{
                flex: 1;
                text-align: center;
            }

            .footer-col-2 img{
                width: 180px;
                margin-bottom: 20px;
            }

            .footer-col-3, .footer-col-4{
                flex-basis: 12%;
                text-align: center;
            }

            ul{
                list-style-type: none;
            }

            .app-logo{
                margin-top: 20px;
            }

            .app-logo img{
                width: 140px;
            }

            .footer hr{
                border: none;
                background: #b5b5b5;
                height: 1px;
                margin: 20px 0;
            }

            .copyright{
                text-align: center;
            }

            /*-------all products------*/
            .row-2{
                justify-content: space-between;
                margin: 100px auto 50px;
            }

            select{
                border: 1px solid #ff523b;
                padding: 5px;
            }

            select:focus{
                outline: none;
            }

            .page-btn{
                margin: 0 auto 80px;
            }

            .page-btn span{
                display: inline-block;
                border: 1px solid #ff523b;
                margin: 10px;
                width: 40px;
                height: 40px;
                text-align: center;
                line-height: 40px;
                cursor: pointer;
            }

            .page-btn span:hover{
                background: #ff523b;
                color: #fff;
            }

            /*single product details*/

            .single-product{
                margin-top: 80px;
            }

            .single-product .col-2 img{
                padding: 0;
                margin-left: 30px;

            }

            .single-product .col-2{
                padding: 20px;

            }

            .single-product h4{
                margin: 20px 0;
                font-size: 22px;
                font-weight: bold;
            }

            .single-product select{
                display: block;
                padding: 10px;
                margin-top: 20px;
            }

            .single-product input{
                width: 50px;
                height: 40px;
                padding-left: 10px;
                font-size: 20px;
                margin-right: 10px;
                border: 1px solid #ff523b;
            }

            input:focus{
                outline: none;
            }

            .small-img-row{
                display: flex;
                justify-content: space-between;
            }

            .small-img-col{
                flex-basis: 24%;
                cursor: pointer;
            }

            /*-----cart item details----*/

            .cart-page{
                margin: 80px auto;
            }

            table{
                width: 100%;
                border-collapse: collapse;
            }

            .cart-info{
                display: flex;
                flex-wrap: wrap;
            }

            th{
                text-align: left;
                padding: 5px;
                color: #fff;
                background: #ff523b;
                font-weight: normal;
            }

            td{
                padding: 10px 5px;
            }

            td input{
                width: 40px;
                height: 30px;
                padding: 5px;
            }

            td a{
                color: #ff523b;
                font-size: 12px;
            }

            td img{
                width: 80px;
                height: 80px;
                margin-right: 10px;
            }

            .total-price{
                display: flex;
                justify-content: flex-end;
            }
            .total-price table{
                border-top: 3px solid #ff523b;
                width: 100%;
                max-width: 400px;
            }

            td:last-child{
                text-align: right;
            }

            th:last-child{
                text-align: right;
            }

            /*---account page---*/

            .account-page{
                padding: 50px 0;
                background: radial-gradient(#fff,#ffd6d6);
            }

            .center{
                position: absolute;
                top: 50%;
                left: 50%;
                margin-left: 20px;
                width: 400px;
                height: 700px;
                background: white;
                border-radius: 10px;
                box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
            }
            .center h1{
                text-align: center;
                font-size: 40px;
                padding: 20px 0;
                
            }
            .center form{
                padding: 0 40px;
                box-sizing: border-box;
            }
            .center form .txt_field{
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 0;
            }
            .txt_field input{
                width: 100%;
                padding: 0 5px;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }
            .txt_field label{
                position: absolute;
                top: 50%;
                left: 5px;
                color: #adadad;
                transform: translateY(-50%);
                font-size: 16px;
                pointer-events: none;
                transition: .5s;
            }
            .txt_field span::before{
                content: '';
                position: absolute;
                top: 40px;
                left: 0;
                width: 0%;
                height: 2px;
                background: #ff523b;
                transition: .5s;
            }
            .txt_field input:focus ~ label,
            .txt_field input:valid ~ label{
                top: -5px;
                color: #ff523b;
            }
            .txt_field input:focus ~ span::before,
            .txt_field input:valid ~ span::before{
                width: 100%;
            }
            .pass{
                margin: -5px 0 20px 5px;
                color: #a6a6a6;
                cursor: pointer;
            }
            .pass:hover{
                text-decoration: underline;
            }
            .center input[type="submit"]{
                width: 100%;
                height: 50px;
                border: 1px solid;
                background: #ff523b;
                border-radius: 25px;
                font-size: 18px;
                color: #e9f4fb;
                font-weight: 700;
                cursor: pointer;
                outline: none;
            }
            .center input[type="submit"]:hover{
                border-color: #555;
                transition: .5s;
            }
            .signup_link{
                margin: 30px 0;
                text-align: center;
                font-size: 16px;
                color: #666666;
            }
            .signup_link a{
                color: #ff523b;
                text-decoration: none;
            }
            .signup_link a:hover{
                text-decoration: underline;
            }



            @media only screen and (max-width: 600px){
                .cart-info p{
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <%@include file="menu.jsp"%>

        </div>

        <!---account page-->    
        <div class="account-page">
            <div class="container">
                <div class="row">
                    <div class="col-2">
                        <img src="img/loginpic2.png" width="100%">
                    </div>

                    <div class="col-2">

                        <div class="center">
                            
                            <form method="post" action="login">
                                <input style="border: 0;width: 100%" type="text" readonly value="${result}">
                                <h1>Reset password</h1>
                                <div class="txt_field">
                                    <input type="text" name="username" value="${username}" required>
                                    <span></span>
                                    <label>Username</label>
                                </div>
                                <div class="txt_field">
                                    <input type="email" name="email" value="${email}" required>
                                    <span></span>
                                    <label>Email</label>
                                </div>
                                <div class="txt_field">
                                    <input type="text" name="password" required>
                                    <span></span>
                                    <label>New Password</label>
                                </div>
                                <div class="txt_field">
                                    <input type="text" name="repass" required>
                                    <span></span>
                                    <label>Re-Password</label>
                                </div>
                                
                                <input type="submit" value="Reset Password" name="reset">
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <!------footer-->
        <%@include file="footer.jsp"%>
        <!------js for toggle Form-->
        <script>
            var LoginForm = document.getElementById("LoginForm");
            var RegForm = document.getElementById("RegForm");
            var Indicator = document.getElementById("Indicator");

            function register() {
                RegForm.style.transform = "translateX(0px)";
                LoginForm.style.transform = "translateX(0px)";
                Indicator.style.transform = "translateX(100px)";
            }

            function login() {
                RegForm.style.transform = "translateX(300px)";
                LoginForm.style.transform = "translateX(300px)";
                Indicator.style.transform = "translateX(0px)";
            }
        </script>


    </body>
</html>
