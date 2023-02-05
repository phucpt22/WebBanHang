package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;

	@GetMapping("/login")
	public String login1() {
		return "/user/login";
	}

	@PostMapping("/login")
	public String login2() {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);
		sessionService.set("username", un);
		if (rm == true) {
			cookieService.add("username", un, 1);
			cookieService.add("password", pw, 1);

		} else {
			cookieService.remove("username");
			cookieService.remove("password");
		}
		return "redirect:/products";
	}
	
	@GetMapping("/logout")
	public String getLogout() {
		sessionService.remove("username");
		return "redirect:/account/login";
	}
}
