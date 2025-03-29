package com.mani.JobPortal.Service;

import com.mani.JobPortal.Model.PostJob;
import com.mani.JobPortal.Repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {
    @Autowired
    private JobRepo repo;
    public void addJob(PostJob postJob){
        repo.addJob(postJob);
    }
    public List<PostJob> getAllJobs(){
        return repo.getAllJobs();
    }
}
