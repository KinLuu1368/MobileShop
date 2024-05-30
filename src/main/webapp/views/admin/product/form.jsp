<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="mt-4">Product Form</h2>
        <form:form action="/product/index" modelAttribute="item" method="POST" class="mt-4">
            <div class="mb-3">
			    <label for="product-id" class="form-label">Product ID</label>
			    <form:input path="id" id="product-id" class="form-control" placeholder="Product ID" required="true" disabled="true" />
			</div>
            <div class="mb-3">
                <label for="product-name" class="form-label">Product Name</label>
                <form:input path="name" id="product-name" class="form-control" placeholder="Product Name" required="true" />
            </div>
            <div class="mb-3">
                <label for="product-price" class="form-label">Product Price</label>
                <form:input path="price" id="product-price" class="form-control" placeholder="Product Price" required="true" />
            </div>
            <div class="mb-3">
                <label for="product-image" class="form-label">Product Image</label>
                <form:input path="image" id="product-image" class="form-control" placeholder="Product Image" required="true" />
            </div>
            <div class="mb-3">
                <label for="product-available" class="form-label">Available</label>
                <form:select path="available" id="product-available" class="form-control" required="true">
                    <form:option value="true">Yes</form:option>
                    <form:option value="false">No</form:option>
                </form:select>
            </div>
            <div class="mb-3">
                <label for="product-category" class="form-label">Category</label>
               <form:select path="category.id" id="product-category" class="form-control" required="true">
				    <form:option value="">Select category</form:option>
				    <c:forEach items="${categories}" var="category">
				        <form:option value="${category.id}" label="${category.name}"></form:option>
				    </c:forEach>
				</form:select>
            </div>
            <hr>
            <div class="mb-3">
                <button formaction="/admin/product/create" class="btn btn-primary">Create</button>
                <button formaction="/admin/product/update" class="btn btn-primary">Update</button>
                <a href="/admin/product/delete/${item.id}" class="btn btn-danger">Delete</a>
                <a href="/admin/product/index" class="btn btn-secondary">Reset</a>
            </div>
        </form:form>
    </div>
</body>
</html>