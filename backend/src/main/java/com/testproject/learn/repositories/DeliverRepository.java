package com.testproject.learn.repositories;

import com.testproject.learn.entities.Deliver;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeliverRepository extends JpaRepository<Deliver, Long> {
}
