<%-- 
    Document   : admin
    Created on : Nov 5, 2016, 3:52:32 PM
    Author     : duely
--%>

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Product Inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>

        
        <%@include file="/WEB-INF/views/template/footer.jsp" %>


