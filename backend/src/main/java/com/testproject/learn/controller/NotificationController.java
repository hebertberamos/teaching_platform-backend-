package com.testproject.learn.controller;

import com.testproject.learn.dtos.NotificationDTO;
import com.testproject.learn.servicies.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/notifications")
public class NotificationController {

    @Autowired
    private NotificationService service;


    @GetMapping
    public ResponseEntity<Page<NotificationDTO>> findAll(Pageable pageable){
        Page<NotificationDTO> page = service.findAllByUser(pageable);
        return ResponseEntity.ok().body(page);
    }
}
