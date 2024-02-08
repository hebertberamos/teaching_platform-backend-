package com.testproject.learn.repositories;

import com.testproject.learn.entities.Section;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SectionRepository extends JpaRepository<Section, Long>{
    
}
