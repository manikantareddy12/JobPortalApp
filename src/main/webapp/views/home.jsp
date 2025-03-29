<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Job Portal</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="topnav">
        <div class="branding">Job Application Portal</div>
        <div class="nav-buttons">
            <a href="/home">Home</a>
            <a href="/alljobs">AllJobs</a>
            <a href="https://www.linkedin.com/in/manikantaannem47/" target="_blank" class="contact">Contact</a>
            <a href="/logout">Logout</a>
        </div>
    </div>

    <!-- Centered Buttons Section -->
    <div class="main-container">
        <div class="main-buttons">
            <a href="/alljobs" class="btn big-btn">All Jobs</a>
            <a href="/createjob" class="btn big-btn">Post Job</a>
        </div>
    </div>
</body>
</html>
