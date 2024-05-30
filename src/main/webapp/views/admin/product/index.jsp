<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="../Header.jsp"/>
    <div class="container">
        <h3 class="mt-4 text-center">PRODUCT MANAGEMENT</h3>
        <jsp:include page="form.jsp"/>
        <hr>
        <jsp:include page="table.jsp"/>
    </div>
</body>
</html>