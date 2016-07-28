package com.sshwa.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class App {

    // (дефолтный)
    @RequestMapping(value = {"/"}, method = {RequestMethod.GET})
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");

        return model;
    }

    // user
    @RequestMapping(value = {"/index**"}, method = {RequestMethod.GET}) //@RequestMapping(value = {"/", "/public**"}, method = {RequestMethod.GET})
	public ModelAndView publicPage() {
		ModelAndView model = new ModelAndView();
		model.addObject("message", "This is public page - Only for 'User' Role!");
		model.setViewName("index");

		return model;
	}

    // admin
	@RequestMapping(value = "/protected**", method = RequestMethod.GET)
	public ModelAndView protectedPage() {
		ModelAndView model = new ModelAndView();
		model.addObject("message", "This is protected page - Need 'Admin' Role!");
		model.setViewName("protected");

		return model;
	}

    // superadmin
	@RequestMapping(value = "/confidential**", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		ModelAndView model = new ModelAndView();
		model.addObject("message", "This is confidential page - Need 'SuperAdmin' Role!");
		model.setViewName("protected");

		return model;
	}
}
