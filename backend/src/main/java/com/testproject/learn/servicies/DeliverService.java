package com.testproject.learn.servicies;

import com.testproject.learn.dtos.DeliverRevisionDTO;
import com.testproject.learn.entities.Deliver;
import com.testproject.learn.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository repository;

    @Transactional
    public void saveRevision(Long id, DeliverRevisionDTO dto){
        Deliver entityDeliver = repository.findById(id).get();

        entityDeliver.setStatus(dto.getStatus());
        entityDeliver.setFeedback(dto.getFeedback());
        entityDeliver.setCorrectCount(dto.getCorrectCount());

        repository.save(entityDeliver);
    }

}
