package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StudentRepo;
import com.example.demo.model.Student;

@Service
public class StudentService {

	@Autowired
	private StudentRepo studrepo;

	public List<Student> retAll()
	{
		return studrepo.findAll();
	}

	
	public void delete(String name) {
		// TODO Auto-generated method stub
		studrepo.deleteById(name);
	}


	public void saveStud(Student stud) {
		// TODO Auto-generated method stub
		studrepo.save(stud);
	}
}
