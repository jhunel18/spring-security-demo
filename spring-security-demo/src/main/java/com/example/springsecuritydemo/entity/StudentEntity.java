package com.example.springsecuritydemo.entity;


import jakarta.persistence.*;

@Entity
@Table(name = "student_tbl")
public class StudentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @Column(name = "student_fname")
    private String studentFname;

    @Column(name = "student_lname")
    private String studentLname;

    @Column(name = "student_email")
    private String studentEmail;

    @Column(name = "student_course")
    private String studentCourse;

    @Column(name = "gpa")
    private String gpa;

    public String getGpa() {
        return gpa;
    }

    public void setGpa(String gpa) {
        this.gpa = gpa;
    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getStudentFname() {
        return studentFname;
    }

    public void setStudentFname(String studentFname) {
        this.studentFname = studentFname;
    }

    public String getStudentLname() {
        return studentLname;
    }

    public void setStudentLname(String studentLname) {
        this.studentLname = studentLname;
    }

    public String getStudentEmail() {
        return studentEmail;
    }

    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    public String getStudentCourse() {
        return studentCourse;
    }

    public void setStudentCourse(String studentCourse) {
        this.studentCourse = studentCourse;
    }
}
