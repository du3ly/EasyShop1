<%-- 
    Document   : header
    Created on : Oct 14, 2016, 11:45:01 AM
    Author     : Camille
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
    <meta charset="utf-8">
    <title>EasyShop</title>
    <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

<body>

    <header>
        <h1>EasyShop</h1>
    </header>
    <nav id="nav_bar">
        <ul>
            <li><a href="<c:url value='/admin'/>">
                    Admin</a></li>
            <li><a href="<c:url value='/order/showCart'/>">
                    Show Cart</a></li>
        </ul>
    </nav>