package com.sooriya.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sooriya.Entity.Student;

@Controller
public class StudentController {

@RequestMapping("/showForm")
public String showForm(Model model)
{
    model.addAttribute("student", new Student());	
	return "showForm";
}
@RequestMapping("/processForm")
public String processForm(@ModelAttribute("student") Student theStudent)
{
	System.out.println(theStudent.getFirstName() + " " +theStudent.getLastName());
	return "successData";
}

}
