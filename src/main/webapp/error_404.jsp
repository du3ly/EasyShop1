<jsp:include page="/share/header.jsp" />
<jsp:include page="/share/left_column_all.jsp" />

<!-- start the middle column -->

<%@ page isErrorPage="true" %>

<section>

    <h1>404 Error</h1>
    <p>The server was not able to find the file you requested.</p>
    <p>To continue, click the Back button or select a link from this page.</p>

    <h2>Details</h2>
    <p>Requested URI: ${pageContext.errorData.requestURI}</p>

</section>

<!-- end the middle column -->

<jsp:include page="/share/footer.jsp" />