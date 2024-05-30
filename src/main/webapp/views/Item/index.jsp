<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Product Management</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .price-format {
            text-align: right;
        }
    </style>
</head>

<body>
    <h1 class="text-center">Product Management</h1>
    <form action="/Assignment/item/index" method="post">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-3">
                        <label for="idInput" class="form-label">ID</label>
                        <input value="${product.id}" type="text" name="id" class="form-control" id="idInput"
                            placeholder="ID">
                    </div>
                    <div class="mb-3">
                        <label for="typeInput" class="form-label">Type</label>
                        <input value="${product.type}" type="text" name="type" class="form-control" id="typeInput"
                            placeholder="Type">
                    </div>
                    <div class="mb-3">
                        <label for="nameInput" class="form-label">Name</label>
                        <input value="${product.name}" type="text" name="name" class="form-control" id="nameInput"
                            placeholder="Name">
                    </div>
                    <div class="mb-3">
                        <label for="imageInput" class="form-label">Image</label>
                        <input value="${product.image}" type="text" name="image" class="form-control" id="imageInput"
                            placeholder="Image">
                    </div>
                    <div class="mb-3">
                        <label for="chitietInput" class="form-label">Chi tiết</label>
                        <input value="${product.chitiet}" type="text" name="chitiet" class="form-control"
                            id="chitietInput" placeholder="Chi tiết">
                    </div>
                    <div class="mb-3">
                        <label for="priceInput" class="form-label">Price</label>
                       	<input value="<c:out value="${product.price}" />" type="text" name="price" class="form-control" id="priceInput" placeholder="Price">
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="d-flex justify-content-center">
            <button formaction="/Assignment/create" class="btn btn-primary me-2" disabled>Create</button>
            <button formaction="/Assignment/update" class="btn btn-primary me-2" disabled>Update</button>
            <button formaction="/Assignment/delete" class="btn btn-primary me-2" disabled>Delete</button>
            <a href="/Assignment/item/Edit" class="btn btn-primary me-2">Reset</a>
            <a href="/Assignment/Edit" class="btn btn-primary me-2" >User Management</a>
            <a href="/Assignment/home" class="btn btn-primary">HOME</a>
        </div>
    </form>
    <h1 class="text-center mt-4">Information</h1>
    <h1 class="text-center">${message}</h1>
    <table class="table table-bordered table-striped mt-4">
        <thead>
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Name</th>
                <th>Image</th>
                <th>Chi tiết</th>
                <th>Price</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.type}</td>
                    <td>${product.name}</td>
                    <td>${product.image}</td>
                    <td>${product.chitiet}</td>
                    <td class="price-format">${product.price}</td>
                    <td>
                        <a href="/Assignment/item/Edit?id=${product.id}" class="btn btn-primary me-2">Edit</a>
                        <a href="/Assignment/item/Remove?id=${product.id}" class="btn btn-danger">Remove</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>	
	</table>
</body>
 <script>
	    var priceElements = document.getElementsByClassName('price-format');
	    for (var i = 0; i < priceElements.length; i++) {
	        var price = parseFloat(priceElements[i].innerHTML);
	        var formattedPrice = price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
	        priceElements[i].innerHTML = formattedPrice;
	    }
	</script>
	<script>
	    const priceInput = document.getElementById('priceInput');
	    const priceValue = <c:out value="${product.price}" />;
	
	    // Định dạng số tiền VND
	    const formattedPrice = new Intl.NumberFormat('vi-VN', {
	        style: 'currency',
	        currency: 'VND'
	    }).format(priceValue);
	
	    // Hiển thị giá trị đã được định dạng trong trường input
	    priceInput.value = formattedPrice;
	</script>
</html>