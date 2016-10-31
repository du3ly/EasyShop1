<jsp:include page="/share/header.jsp" />

<!-- begin middle column -->

<section>

<h1>Thank you, ${user.firstName}</h1>

<!-- store email address as a global variable and use EL to display it -->

<p>Your order has been submitted. We'll begin processing your 
order right away. 
</section>

<!-- end middle column -->

<jsp:include page="/share/footer.jsp" />