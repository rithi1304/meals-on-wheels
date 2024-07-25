package com.MerryMeals.Merry.Meals;


import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.MerryMeals.Merry.Meals.User;
import com.MerryMeals.Merry.Meals.UserService;

@Controller
public class AllController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private MenuService menuService;
	
	@Autowired
	private DonateService donateService;
	
	@GetMapping("/")
	public String Home() {
		return "Home";
	}
	
	@GetMapping("/Home")
	public String home() {
		return "Home";
	}
	
	//Load the Login Page
    @GetMapping("cus_login_page")
    public String onLogin() {
        return "login";
    }


    //For Login Error
    @GetMapping("login_error")
    public String onLoginError(Model model) {
        String error_msg = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error_msg);
        return "login";
    }
   
    @GetMapping("new")
  	public String newUserForm(@ModelAttribute("user") User user) {
  		return "Register";
  	}
      
      //Save register user to database
  	@PostMapping("save")
  	public String saveStore(@ModelAttribute("user") User user, Model model) {
  		System.out.println("/save Login Controller");
  		userService.save(user);
  		String register_success = "<h5> Registeration Successful! </h5>";
  		model.addAttribute("register_success", register_success);
  		return "Register";
  	}
  	@GetMapping("member")
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "Member";
    }
  	@GetMapping("delete")
	public String deleteUser(@RequestParam long id) {
		userService.delete(id);
		return "redirect:/member";		
	}
    
    
    @GetMapping("about")
    public String about() {
        return "AboutUs";
    }
    
    
    @GetMapping("contact")
    public String contact() {
        return "ContactUs";
    }
    
    
    @GetMapping("regimenu")
	public String regimenu(@ModelAttribute("menu") Menu menu) {
		return "RegiMenu";
	}
    
	@PostMapping("savemenu")
  	public String saveMenu(@ModelAttribute("menu") Menu menu, Model model, @AuthenticationPrincipal UserDetails userDetails) {
  		System.out.println("/save menu Controller");
  		Date today=new Date();
  		menu.setOder_date_time(today);
  		
  		
  		System.out.println("Login Username is " + userDetails.getUsername());
  		String loginusername=userDetails.getUsername();
  		User user = userService.getUserByName(loginusername);
        menu.setUser(user);
  		
        
  		menuService.save(menu);
  		String buy_success = "<h5> menu Successful! </h5>";
  		model.addAttribute("buy_success", buy_success);
  		//return "menu";
  		return "redirect:/menu";	
  	}
    
    @GetMapping("partners")
   	public String partners() {
   		return "Partners";
   	}
    
    @GetMapping("menu")
   	public String menu() {
   		return "MenuPage";
   	}
    
    @GetMapping("donate")
   	public String donate(Model model) {
    	Donate donate =new Donate();
    	model.addAttribute(donate);
   		return "Donate";
   	}
    
    @PostMapping("donatem")
  	public String saveDonate(@ModelAttribute("donate") Donate donate, Model model) {
  		System.out.println("/save Donate Controller");
  		Date today=new Date();
  		donate.setDonate_date_time(today);
  		donateService.save(donate);
  		String doante_success = "<h5> donate Successful! </h5>";
  		model.addAttribute("donate_success", doante_success);
  		model.addAttribute("donate", new Donate());
  		//return "menu";
  		return "Donate";	
  	}
    
    @GetMapping("donatelist")
    public String donatelist(Model model) {
        List<Donate> donate = donateService.listAll();
        if(!CollectionUtils.isEmpty(donate)) {
            model.addAttribute("donatelists", donate);
        }
   		return "DonateList";
   	}
}
