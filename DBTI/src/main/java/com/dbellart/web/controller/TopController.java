package com.dbellart.web.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TopController {
	
	
	@RequestMapping("about")
	public String about() {

		return "top/about";
	}
	
	@RequestMapping("service")
	public String service() {

		return "/top/service";
	}
	
	@RequestMapping("join")
	public String join() {
		
		return "top/join";
	}
	
	//SpringSecurity 인증 후 로그인
	@RequestMapping("login")
	public ModelAndView login(Principal principal,
						@RequestParam(value = "error", defaultValue = "false") Boolean error,
						@RequestParam(value = "withdrawal", defaultValue = "false") Boolean withdrawal) {
		
		if (withdrawal) { //회원탈퇴 이면
            return new ModelAndView("top/login").
                    addObject("withdrawal", withdrawal);
        } else {
            if (error) { //에러이면
                return new ModelAndView("top/login").
                        addObject("error", error);
            } else {
                if (!ObjectUtils.isEmpty(principal)) { //시큐리티 작동되면
                    return new ModelAndView("home");
                }
                return new ModelAndView("top/login"); //시큐리티 작동되지 않으면
            }
        }
	}

	
	@RequestMapping("myPage")
	public String myPage() {

		return "top/myPage";
	}
	
	
	@RequestMapping("write")
	public String write() {

		return "top/write";
	}
	
	@RequestMapping("contact")
	public String contact() {

		return "top/contact";
	}
	
	@RequestMapping("privacyAgree")
	public String privacyAgree() {

		return "top/agree/privacyAgree";
	}

	@RequestMapping("dbelleAgree")
	public String dbelleAgree() {

		return "top/agree/dbelleAgree";
	}
	
	@RequestMapping("marketingAgree")
	public String Agree() {

		return "top/agree/marketingAgree";
	}
	

}
