<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login - Job Portal</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <div class="topnav">
        <div class="branding">Job Application Portal</div>
    </div>

    <div class="login-container">
        <div class="login-form">
            <h2>Login</h2>
            <form action="/login" method="post">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required placeholder="Enter your email">

                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required placeholder="Enter your password">

                <button type="submit" class="btn login-btn">Login</button>
            </form>
        </div>
    </div>

</body>
</html>
