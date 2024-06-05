<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Active Account</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
        }
        .form-container {
            max-width: 400px;
            margin: 0 auto;
        }
        .form-container h1 {
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <jsp:include page="/views/Header.jsp"/>
    <div class="container">
        <div class="form-container">
            <h1 class="mb-4">Activate Account</h1>
            <form action="/account/active" method="post">
                <div class="mb-3">
                    <input type="text" name="activationCode" class="form-control" placeholder="Enter activation code">
                </div>
                <button type="submit" class="btn btn-primary">Activate</button>
                <p>${message}</p>
            </form>
        </div>
    </div>
    <jsp:include page="/views/Footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>