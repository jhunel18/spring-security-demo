package com.example.springsecuritydemo.repository;

import com.example.springsecuritydemo.entity.StudentEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<StudentEntity, Long> {
List<StudentEntity> findByid(Long id);
List<StudentEntity> deleteById(long id);

}
