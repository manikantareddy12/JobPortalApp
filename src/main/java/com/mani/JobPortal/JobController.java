package com.mani.JobPortal;

import com.mani.JobPortal.Model.PostJob;
import com.mani.JobPortal.Service.JobService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService jobService;
    @GetMapping({"/", "/login"})
    public String showLogin(){
        return "login";
    }
    @PostMapping("/login")
    public String processLogin(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        Model model) {
        //Hardcoded login credentials
        if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
            return "redirect:/home";
        } else {
            model.addAttribute("error", "Invalid Credentials");
            return "login";
        }
    }
    @GetMapping("/home")
    public String showHome() {
        return "home";
    }


    @GetMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        if (session != null){
            session.invalidate();
        }
        return "redirect:/login";
    }

    @GetMapping("/createjob")
    public String showJobForm(){
        return "postjob";
    }
    @PostMapping("/submitjob")
    public String processJob(@ModelAttribute("postJob") PostJob postJob, Model model) {
        jobService.addJob(postJob);
        model.addAttribute("postJob", postJob);
        return "success";
    }

    @GetMapping("/alljobs")
    public String viewJobs(Model model){
        List<PostJob> jobs = jobService.getAllJobs();
        model.addAttribute("jobPosts", jobs);
        return "alljobs";

    }


}