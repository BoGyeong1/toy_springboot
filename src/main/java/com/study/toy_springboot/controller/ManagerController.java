package com.study.toy_springboot.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManagerController {

    @GetMapping({ "/user/*" })
    public ModelAndView user(ModelAndView modelAndView) {
        String viewName = "user/read";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    @GetMapping({ "/admin/*" })
    public ModelAndView admin(ModelAndView modelAndView) {
        String viewName = "admin/read";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    @GetMapping({ "/manager/*" })
    public ModelAndView manager(ModelAndView modelAndView) {
        String viewName = "manager/read";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

}
