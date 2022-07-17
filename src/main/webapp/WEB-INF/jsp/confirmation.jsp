<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap" />
    <spring:url value="/resources/css/basic.css" var="basic" />
	<spring:url value="/resources/images/user.png" var="userImage" />
    <title>Admin HomePage</title>
    
    <link href="${bootstrap}" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/861b8f7cde.js" ></script>
    <link href="${basic}" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>


<div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">DASHBOARD</a>
            </div>
            <div class="header-right">
                <a href="#" class="btn btn-info " title="New Message"><b>Message </b><i class="fa fa-envelope-o fa-x"></i></a>
                <a href="#" class="btn btn-primary" title="Home"><b>Home </b></a>
                
            </div>
        </nav>
        
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="${userImage}" class="img-thumbnail" />

                            <div class="inner-text">
                                ${message}
                            <br/>
                                <small>Status : online </small>
                            </div>
                        </div>

                    </li>
                    <li>
                        <a class="active-menu" href="#"><i class="fa fa-dashboard "></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-solid fa-user-secret"></i> Staff Manager <span class="fa fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><i class="fa fa-toggle-on"></i>Administration</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa-solid fa-person"></i>Member</a>
                            </li>    
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa-regular fa-clock-rotate-left"></i>History <span class="fa arrow"></span></a>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">DASHBOARD</h1>
                        <h1 class="page-subhead-line">${message} Administration </h1>
                    </div>
                </div>
            </div>
         </div>
      </div>
        <div id="footer-sec">
        &copy; 2022 Java Web | Contact Us : Member 1 | Member 2 | Member 3 | Member 4 
    </div>
</body>
</html>