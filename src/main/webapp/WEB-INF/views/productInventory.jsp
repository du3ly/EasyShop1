<%-- 
    Document   : productInventory
    Created on : Nov 5, 2016, 3:58:30 PM
    Author     : duely
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product</th>
                <th>Brand</th>
                <th>Description</th>
                <th>Category</th>
                <th>Gender</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productBrand}</td>
                    <td>${product.productDescription}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productGender}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                      <a href="<spring:url value="/productList/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
                      <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-remove"></span></a>
                      <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                    
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct" />" class="btn btn-primary">Add Product</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
