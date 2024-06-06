<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="../Header.jsp"/>
    <div class="container">
        <h2 class="mt-4">Shopping Cart</h2>
        <table class="table mt-4">
            <thead>
                <tr>
                    <th>Tên Sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tạm tính</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cart.items}">
                    <form action="/cart/update/${item.id}" method="post">
                        <input type="hidden" name="id" value="${item.id}">
                        <tr>
                            <td>${item.name}</td>
                            <td class="price-format">${item.price}</td>
                      		<td><input name="qty" value="${item.quantity}" onblur="this.form.submit()" style="width:50px;"></td>
                            <td class="price-format">${item.price * item.quantity}</td>
                            <td>
                                <a href="/cart/remove/${item.id}" class="btn btn-danger">Xóa Sản phẩm</a>
                            </td>
                        </tr>
                    </form>
                </c:forEach>
            </tbody>
        </table>
        <a href="/cart/clear" class="btn btn-primary">Xóa giỏ hàng</a>
        <a href="/item/index" class="btn btn-secondary">Thanh toán</a>
    </div>
    <hr>
    <jsp:include page="../Footer.jsp"/>
    
    
    <script>
		var priceElements = document.getElementsByClassName('price-format');
		for (var i = 0; i < priceElements.length; i++) {
		    var price = parseFloat(priceElements[i].innerHTML);
		    var formattedPrice = price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
		    priceElements[i].innerHTML = formattedPrice;
		}
	</script>
</body>
</html>