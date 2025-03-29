<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Jobs - Job Portal</title>
    <link rel="stylesheet" href="/style.css">
    <link rel="stylesheet" href="/alljobs.css">
</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="topnav">
        <div class="branding">Job Application Portal</div>
        <div class="nav-buttons">
            <a href="/home">Home</a>
            <a href="/createjob">Post Job</a>
            <a href="/alljobs">All Jobs</a>
            <a href="https://www.linkedin.com/in/manikantaannem47/" target="_blank" class="contact">Contact</a>
            <a href="/logout">Logout</a>
        </div>
    </div>

    <!-- Centered Heading Section -->
    <div class="heading-section">
        <h2>All Jobs Posted</h2>
    </div>

    <!-- Jobs List -->
    <div class="jobs-container">
        <c:forEach var="job" items="${jobPosts}">
            <div class="job-card">
                <h3>${job.jobTitle}</h3>
                <p><strong>Job ID:</strong> ${job.jobId}</p>
                <p><strong>Description:</strong> ${job.description}</p>
                <p><strong>Experience Required:</strong> ${job.experience} years</p>
                <p><strong>Tech Skills:</strong>
                    <c:forEach var="skill" items="${job.techSkills}">
                        ${skill}<br/>
                    </c:forEach>
                </p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
