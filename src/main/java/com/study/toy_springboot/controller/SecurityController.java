package com.study.toy_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityController {

    @GetMapping({ "/loginForm" })
    public ModelAndView loginForm(ModelAndView modelAndView) {
        String viewName = "security/loginForm";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    @GetMapping({ "/logoutForm" })
    public ModelAndView logoutForm(ModelAndView modelAndView) {
        String viewName = "security/logoutForm";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

}
