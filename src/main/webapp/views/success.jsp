<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Job Posted Successfully - Job Portal</title>
    <link rel="stylesheet" href="/style.css">
    <!-- Additional inline styling for the success page -->
    <style>
        .success-container {
            max-width: 600px;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .success-container h2 {
            color: #28a745;
            margin-bottom: 20px;
        }
        .job-details p {
            font-size: 1.1rem;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <!-- Top Navigation Bar -->
    <div class="topnav">
        <div class="branding">Job Application Portal</div>
        <div class="nav-buttons">
            <a href="/home">Home</a>
            <a href="/alljobs">All Jobs</a>
            <a href="https://www.linkedin.com/in/manikantaannem47/" target="_blank" class="contact">Contact</a>
            <a href="/logout">Logout</a>
        </div>
    </div>

    <!-- Success Container -->
    <div class="success-container">
        <h2>Job Posted Successfully!</h2>
        <div class="job-details">
            <p><strong>Job ID:</strong> ${postJob.jobId}</p>
            <p><strong>Job Title:</strong> ${postJob.jobTitle}</p>
            <p><strong>Description:</strong> ${postJob.description}</p>
            <p><strong>Experience Required:</strong> ${postJob.experience}</p>
            <p><strong>Tech Skills:</strong>
                <c:forEach var="skill" items="${postJob.techSkills}">
                    ${skill}<br/>
                </c:forEach>
            </p>
        </div>
    </div>
</body>
</html>
