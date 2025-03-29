package com.mani.JobPortal.Model;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PostJob {
    private int jobId;
    private String jobTitle;
    private String description;
    private int experience;
    private List<String> techSkills;

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public List<String> getTechSkills() {
        return techSkills;
    }

    public void setTechSkills(List<String> techSkills) {
        this.techSkills = techSkills;
    }

    public PostJob(int jobId, String jobTitle, String description, int experience, List<String> techSkills) {
        this.jobId = jobId;
        this.jobTitle = jobTitle;
        this.description = description;
        this.experience = experience;
        this.techSkills = techSkills;
    }
    public PostJob(){
        //No args Constructor
    }
}
