package com.sooriya.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sooriya.Entity.Student2;

@Controller
public class StudentController2 {
	
@RequestMapping("/showForm2")
public String showForm2(Model model)
{
	model.addAttribute("student", new Student2());
	return "showForm2";
}
@RequestMapping("/processForm2")
public String processForm2(@ModelAttribute("student") Student2 theStudent)
{
	return "successData2";
}

}
