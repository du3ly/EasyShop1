<%-- 
    Document   : addProduct
    Created on : Nov 5, 2016, 4:07:16 PM
    Author     : duely
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product" enctype="multipart/form-data">
            
        <div class="form-group">
            <label for="product">Product</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>
        
        <div class="form-group">
            <label for="brand">Brand</label> <form:errors path="productBrand" cssStyle="color: #ff0000;" />
            <form:input path="productBrand" id="brand" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="description">Description</label> <form:errors path="productDescription" cssStyle="color: #ff0000;" />
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>
        
        <div class="form-group">
            <label for="category">Category</label> <form:errors path="productCategory" cssStyle="color: #ff0000;" />
            <select name="category">
                <option value="Shoes" selected>Shoes</option>
                <option value="Tops">Tops</option>
                <option value="Bottoms">Bottoms</option>
                <option value="Bags">Bags</option>
            </select>
        </div>
        
        <div class="form-group">
            <label for="gender">Gender</label> <form:errors path="productGender" cssStyle="color: #ff0000;" />
            <label class="checkbox-inline"><form:radiobutton path="productGender" id="gender" value="M" />Male</label>
            <label class="checkbox-inline"><form:radiobutton path="productGender" id="gender" value="F" />Female</label>
        </div>

        <div class="form-group">
            <label for="price">Price</label>  <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <br><br>
        <input type="submit" value="SUBMIT" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">CANCEL</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

