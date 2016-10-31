<%-- 
    Document   : index
    Created on : Oct 23, 2016, 9:40:40 PM
    Author     : duely
--%>

<jsp:include page="/share/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
          
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-6">
          <h2>LOGIN</h2>
            <form class="navbar-form navbar-left" name="submitForm" method="POST">
              <div class="form-group">
                  <input type="text" class="form-control" name="userName" placeholder="Email"> </br>
                  <input type="password" class="form-control" name="password" placeholder="Password">
              </div>
                </br><button type="submit" class="btn btn-default" value="Submit">LOGIN &raquo;</button>
                </br>
                <div style="color: red">${error}</div>
            </form>
        </div>
        <div class="col-lg-6">
          <h2>REGISTER</h2>
          <p><a class="btn btn-default" href="<c:url value='/user_login/register.jsp' />" role="button">REGISTER &raquo;</a></p>
       </div>
      </div>

      <hr>

      <jsp:include page="/share/footer.jsp" />
    </div> <!-- /container -->
