package com.medra.neurologia.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.DisabledException;
import org.springframework.security.web.WebAttributes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {


	@RequestMapping(value = "/login")
    public ModelAndView login(@RequestParam(value = "error", defaultValue = "false") Boolean error,
                              Model model,
                              HttpServletRequest request) {
        Object isDisabled = request.getSession().getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
        if (isDisabled != null && isDisabled instanceof DisabledException) {
            model.addAttribute("blocked", true);
            request.getSession().removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
        } else {
            model.addAttribute("error", error);
        }
        return new ModelAndView("login", model.asMap());
    }
	
}
