package com.example.springsecuritydemo.controller;


import com.example.springsecuritydemo.entity.StudentEntity;
import com.example.springsecuritydemo.repository.StudentRepository;
import com.example.springsecuritydemo.service.StudentService;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private StudentRepository studentRepository;

    @PostMapping(path = "/student")
    public @ResponseBody String addStudents(@RequestParam String studentFname,
                                            @RequestParam String studentLname,
                                            @RequestParam String studentEmail,
                                            @RequestParam String studentCourse){
        return studentService.createStudent(studentFname, studentLname, studentEmail, studentCourse);

    }
    @GetMapping(path = "/students")
    public @ResponseBody Iterable<StudentEntity> getAllStudents(){
        return studentService.getAllStudents();
    }

    @GetMapping("student_id")
    public ResponseEntity<List<StudentEntity>> getByid(@RequestParam Long id){
        return studentService.getByid(id);
    }

    @DeleteMapping("/delete/{id}")
    @Transactional
    public ResponseEntity<List<StudentEntity>> deleteById(@PathVariable long id){
        return new ResponseEntity<>(studentRepository.deleteById(id), HttpStatus.OK);
   }
    @PutMapping("/update/{student_id}")
    public ResponseEntity<StudentEntity> updateStudent(@PathVariable int student_id,@RequestBody StudentEntity studentEntity ){
        StudentEntity student = studentRepository.getById((long) student_id);
        student.setStudentEmail(studentEntity.getStudentEmail());
        student.setStudentFname(studentEntity.getStudentFname());
        student.setStudentLname(studentEntity.getStudentLname());
        student.setStudentCourse(studentEntity.getStudentCourse());
        return new ResponseEntity<>(studentRepository.save(student), HttpStatus.OK);
    }
}
