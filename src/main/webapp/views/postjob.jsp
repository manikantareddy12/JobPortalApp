<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Post a Job -   Job Portal</title>
    <link rel="stylesheet" href="/style.css">
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

    <!-- Job Posting Form -->
    <div class="form-container">
        <h2>Post a Job</h2>
        <form action="/submitjob" method="post">
            <label for="jobId">Job ID:</label>
            <input type="number" id="jobId" name="jobId" placeholder="Enter Job ID" required>

            <label for="jobTitle">Job Title:</label>
            <input type="text" id="jobTitle" name="jobTitle" placeholder="Enter Job Title" required>

            <label for="description">Job Description:</label>
            <textarea id="description" name="description" placeholder="Enter Job Description" required></textarea>

            <label for="experience">Experience Required:</label>
            <input type="text" id="experience" name="experience" placeholder="Enter required experience" required>

            <label for="techSkills">Tech Skills:</label>
            <select id="techSkills" name="techSkills" multiple size="10" required>
                <option value="Java">Java</option>
                <option value="Spring">Spring</option>
                <option value="SQL">SQL</option>
                <option value="JavaScript">JavaScript</option>
                <option value="HTML/CSS">HTML/CSS</option>
                <option value="Python">Python</option>
                <option value="React">React</option>
                <option value="Salesforce">Salesforce</option>
                <option value="Tableau">Tableau</option>
                <option value="Node.js">Node.js</option>
            </select>


            <button type="submit" class="btn submit-btn">Submit</button>
        </form>
    </div>
</body>
</html>
