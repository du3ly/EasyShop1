<jsp:include page="/share/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <jsp:include page="/share/left_column_home.jsp" /> -->
    
    	<!-- Slide Show -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/coach-bag1.jpg" alt="img1">
                    </div>
                    <div class="item">
                        <img src="images/backpacks-1.jpg" alt="img1">
                    </div>
                    <div class="item">
                        <img src="images/men_travelbag.jpg" alt="img1">
                    </div>	
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		</div>
		<div class="clearfix" style="margin-bottom:20px;"></div>
	
	<!-- End Slide Show -->

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-6">
          <h2>// WOMEN</h2>       
          <p><a class="btn btn-default" href="<c:url value='header_women' />" role="button">SHOP NOW &raquo;</a></p>
        </div>
        <div class="col-lg-6">
          <h2>// MEN</h2>
          <p><a class="btn btn-default" href="<c:url value='header_men' />" role="button">SHOP NOW &raquo;</a></p>
       </div>
      </div>

      <hr>

      <jsp:include page="/share/footer.jsp" />
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../EasyShop/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>