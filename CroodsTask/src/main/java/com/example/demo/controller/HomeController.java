package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.model.Student;
import com.example.demo.service.StudentService;

@Controller
public class HomeController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/")
	public ModelAndView home(Model model)
	{
		ModelAndView mv=new ModelAndView("/home");
		List<Student> lst=studentService.retAll();
		System.out.println(lst.toString());
		mv.addObject("students", lst);
		return mv;
	}
	
	@RequestMapping("/delete/{name}")
	public RedirectView delete(@PathVariable("name") String name)
	{
		RedirectView rv =new RedirectView("/");
		studentService.delete(name);
		return rv;
	}
	
	@RequestMapping("/addStud")
	public RedirectView saveStudent(Student stud)
	{
		RedirectView rv =new RedirectView("/");
		studentService.saveStud(stud);
		return rv;
	}
	
	
}
