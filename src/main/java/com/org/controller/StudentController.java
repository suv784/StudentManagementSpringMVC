package com.org.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.StudentDao;
import com.org.dto.Student;

@Controller
public class StudentController {  
	@RequestMapping("/saveStudent")
	public ModelAndView saveEmployee(@ModelAttribute Student student)
	{
		ModelAndView mav = new ModelAndView("index.jsp");
		System.out.println(student.getName()); 
		System.out.println(student.getRoll()); 
		System.out.println(student.getStudyClass()); 
		System.out.println(student.getAddress()); 
		System.out.println(student.getAge()); 
		System.out.println(student.getFee()); 
		StudentDao.saveStudent(student);
		mav.addObject("msg",student.getName()+"saved Successfully");
		return mav;
	} 
	@RequestMapping("/viewStudent")
	public ModelAndView viewStudentDetails(){
		ModelAndView mav = new ModelAndView("display.jsp"); 
		mav.addObject("students", StudentDao.getAllStudent());
		return mav;
	} 
	@RequestMapping("/delete")
	public ModelAndView deleteStudent(@RequestParam int roll)
	{
		//viewEmployee is an url here ,it is not display page	
		StudentDao.deleteStudent(roll);
		ModelAndView mav = new ModelAndView("viewStudent");
		return mav;
	} 
	@RequestMapping("/edit")
	public ModelAndView editStudent(@RequestParam int roll, Model m)
	{
		ModelAndView mav = new ModelAndView("editstudent.jsp");
		Student student=StudentDao.findStudentByRoll(roll);
		mav.addObject("stdfind",student);
		
		return mav;		
	} 
	@RequestMapping("/update") 
	public ModelAndView updateEmployee(@ModelAttribute Student student)
	{
		ModelAndView mav = new ModelAndView("viewStudent");
		StudentDao.updateStudent(student);
		return mav;				
	}	
	
	

}
