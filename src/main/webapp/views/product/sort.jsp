<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
	
    <div class="container">
    	
        <h3 class="mt-4">SORTING BY ${field}</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th><a href="/product/sort?field=id">Id</a></th>
                    <th><a href="/product/sort?field=name">Name</a></th>
                    <th><a href="/product/sort?field=price">Price</a></th>
                    <th><a href="/product/sort?field=createDate">Date</a></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${items}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <td>${item.createDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>