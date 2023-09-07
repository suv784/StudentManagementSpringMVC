package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;

import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Student;

public class StudentDao { 
	static EntityManagerFactory emf=Persistence.createEntityManagerFactory("suvendu"); 
	
	public static void saveStudent(Student student) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(student);
		et.commit();
	} 
	public static List<Student> getAllStudent() {
		EntityManager em = emf.createEntityManager();
		String hql = "Select s from Student s";
		Query q = em.createQuery(hql);
		return q.getResultList();
	} 
	public static void deleteStudent(int roll) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Student student = em.find(Student.class, roll);
		et.begin();
		em.remove(student);
		et.commit();
	} 
	public static Student findStudentByRoll(int roll) {
		EntityManager em = emf.createEntityManager();
		Student student = em.find(Student.class, roll);
		return student;
	}  
	public static void updateStudent(Student student) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(student);
		et.commit();
	}
	

	

}
