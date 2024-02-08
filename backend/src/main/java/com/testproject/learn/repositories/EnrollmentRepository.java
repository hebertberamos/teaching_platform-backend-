package com.testproject.learn.repositories;

import com.testproject.learn.entities.Enrollment;
import com.testproject.learn.entities.pk.EnrollmentPK;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {
}
