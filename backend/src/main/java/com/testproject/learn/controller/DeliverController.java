package com.testproject.learn.controller;

import com.testproject.learn.dtos.DeliverRevisionDTO;
import com.testproject.learn.servicies.DeliverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverController {

    @Autowired
    private DeliverService service;

    //@PreAuthorize("hasAnyRole('ADMIN', 'EMPLOYEE')")
    @PutMapping(value = "/{id}")
    public ResponseEntity<Void> saveDeliverRevision(@PathVariable Long id, @RequestBody DeliverRevisionDTO dto){
        service.saveRevision(id, dto);
        return ResponseEntity.noContent().build();
    }


}
