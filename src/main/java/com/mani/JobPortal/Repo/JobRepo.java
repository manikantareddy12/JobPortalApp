package com.mani.JobPortal.Repo;

import com.mani.JobPortal.Model.PostJob;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepo {
    List<PostJob> jobs = new ArrayList<>(Arrays.asList(
            new PostJob(1, "Java Developer", "Develops backend services using Java and Spring Boot", 2, Arrays.asList("Java", "Spring", "SQL")),
            new PostJob(2, "Frontend Developer", "Creates responsive web interfaces using JavaScript, HTML, and CSS", 3, Arrays.asList("JavaScript", "HTML/CSS")),
            new PostJob(3, "Full Stack Developer", "Handles both frontend and backend development", 4, Arrays.asList("Java", "Spring", "JavaScript", "SQL", "HTML/CSS")),
            new PostJob(4, "QA Engineer", "Ensures software quality with automated and manual testing", 2, Arrays.asList("Selenium", "JUnit", "SQL")),
            new PostJob(5, "DevOps Engineer", "Manages deployment pipelines and cloud infrastructure", 3, Arrays.asList("Docker", "Kubernetes", "Jenkins")),
            new PostJob(6, "Data Engineer", "Builds and maintains data pipelines for analytics", 4, Arrays.asList("Java", "SQL", "Spark"))
    ));

    public List<PostJob> getAllJobs(){
        return jobs;
    }

    public void addJob(PostJob job){
        jobs.add(job);
        System.out.println(jobs);
    }
}
