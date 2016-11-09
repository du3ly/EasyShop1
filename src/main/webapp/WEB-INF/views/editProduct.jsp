<%-- 
    Document   : editProduct
    Created on : Nov 6, 2016, 9:29:12 AM
    Author     : duely
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead" >Fill the below information to edit a product: </p>
            
        </div>
        
        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product">
        <form:hidden path="productId" value="${product.productId}" />
            <div class="form-group">
                <label for="name">Product</label> 
                <form:input path="productName" id="name" class="form-control" value="${product.productName}"/>
            </div>
            
            <div class="form-group"> 
                <label for="brand">Brand</label>
                <form:input path="productBrand" id="brand" class="form-control" value="${product.productBrand}"/>
            </div>
            
            <div class="form-group"> 
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-control" value="${product.productDescription}"/>
            </div>
            
            <div class="form-group"> 
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="clothes"/> Clothes</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="shoes"/> Shoes</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="bags"/> Bags</label>
            </div>
            
                    
            <div class="form-group"> 
                <label for="gender">Gender</label> 
                <label class="checkbox-inline"><form:radiobutton path="productGender" id="gender" value="M" />Male</label> 
                <label class="checkbox-inline"><form:radiobutton path="productGender" id="gender" value="F" />Female</label> 
            </div> 
 
            <div class="form-group"> 
                <label for="price">Price</label>  
                <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/> 
            </div> 

 
         <br><br> 
         <input type="submit" value="SUBMIT" class="btn btn-default"> 
         <a href="<c:url value="/admin/product" />" class="btn btn-default">CANCEL</a> 
        </form:form> 

       
        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>

