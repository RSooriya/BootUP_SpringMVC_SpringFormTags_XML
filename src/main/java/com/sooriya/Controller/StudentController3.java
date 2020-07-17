package com.sooriya.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sooriya.Entity.Student3;

@Controller
public class StudentController3 {

@Value("#{countryOptions}")
private Map<String,String> countryOptions;
@Value("#{genderOptions}")
private Map<String,String> genderOptions;
@Value("#{languageOptions}")
private Map<String,String> languageOptions;

@RequestMapping("/showForm3")
public String showForm3(Model model)
{
	 model.addAttribute("student", new Student3());
	 model.addAttribute("countryOptions", countryOptions);
	 model.addAttribute("genderOptions", genderOptions);
	 model.addAttribute("languageOptions", languageOptions);
	 return "showForm3";	
}
@RequestMapping("/processForm3")
public String processForm3(@ModelAttribute("student") Student3 theStudent)
{
	return "successData3";
}

	
}
