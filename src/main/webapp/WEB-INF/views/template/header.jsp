<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EASYSHOP</title>
    <!-- Icon -->
    <link rel="icon" href="<c:url value='/images/favicon.ico'/>">
    <!-- Angular JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"/> </script>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<c:url value='/bootstrap-3.3.7-dist/css/bootstrap.min.css'/> ">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="<c:url value='/bootstrap-3.3.7-dist/css/main.css'/> ">
    <link rel="stylesheet" href="<c:url value='/bootstrap-3.3.7-dist/css/carousel.css'/> ">    
</head>

<body>
      <nav class="navbar navbar-default navbar-inverse" style="border-radius:0px !important; margin-bottom:0px;">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<c:url value='/' />">EASYSHOP</a>
        </div>
 
        <div id="navbar" class="navbar-collapse collapse">  
          <ul class="nav navbar-nav">
              <li><a href="<c:url value='/product/productList' />">ALL PRODUCTS</a></li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
              
              <c:if test="${pageContext.request.userPrincipal.name != null}">
                  <li><a>Welcome, ${pageContext.request.userPrincipal.name}</a></li>
                  
                  
                  <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                    <li><a href="<c:url value="/customer/cart"/>"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                  </c:if>
                    
                  <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                    <li><a href="<c:url value='/admin'/>">ADMIN</a></li>
                  </c:if>
                    
                  <li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
                    
              </c:if>
                    
              <c:if test="${pageContext.request.userPrincipal.name == null}">
                <li><a href="<c:url value='/register'/>">REGISTER</a></li>
                <li><a href="<c:url value='/login'/>">LOGIN</a></li>
              </c:if>
                
          </ul>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    
      