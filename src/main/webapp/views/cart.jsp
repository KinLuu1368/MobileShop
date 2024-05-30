<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 800px;
        }
        .mt-4 {
            margin-top: 1.5rem;
        }
        .table {
            background-color: #fff;
        }
        h1 {
            color: #343a40;
        }
    </style>
    <script>
        function formatCurrency(number) {
            var formatter = new Intl.NumberFormat("vi-VN", { style: "currency", currency: "VND" });
            return formatter.format(number);
        }
        function calculateTotal() {
            var totalPrice = 0;
            var priceElements = document.querySelectorAll(".product-price");
            priceElements.forEach(function(element) {
                var price = parseFloat(element.textContent);
                totalPrice += price;
            });
            var totalPriceElement = document.getElementById("total-price");
            totalPriceElement.textContent = formatCurrency(totalPrice);
        }
        document.addEventListener("DOMContentLoaded", function() {
            calculateTotal();
        });
    </script>
</head>
<body>
    <jsp:include page="Header.jsp"></jsp:include>
    <main class="container mt-4">
        <h1 class="mb-4">Giỏ hàng</h1>
        
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cartItems}" var="product">
                    <tr>
                        <td><img src="images/Product/${product.image}" alt="Product Image" width="50"></td>
                        <td>${product.name}</td>
                        <td style="display: none" class="product-price">${product.price}</td>
                        <td><script>document.write(formatCurrency(${product.price}));</script></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div>
            <h4>Tổng tiền: <span id="total-price"></span></h4>
        </div>
    </main>
    <jsp:include page="Footer.jsp"></jsp:include>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>