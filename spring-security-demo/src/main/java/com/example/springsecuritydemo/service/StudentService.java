package com.example.springsecuritydemo.service;

import com.example.springsecuritydemo.entity.StudentEntity;
import com.example.springsecuritydemo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public String createStudent(String fname, String lname, String email, String course){
        StudentEntity studentEntry = new StudentEntity();

        studentEntry.setStudentFname(fname);
        studentEntry.setStudentLname(lname);
        studentEntry.setStudentEmail(email);
        studentEntry.setStudentCourse(course);
        studentRepository.save(studentEntry);

        return "Details Saved!";
    }

    public Iterable<StudentEntity> getAllStudents()
    {
        return studentRepository.findAll();
    }

    public ResponseEntity<List<StudentEntity>> getByid(Long id){
        return new ResponseEntity<>(studentRepository.findByid(id), HttpStatus.OK);
    }
}
