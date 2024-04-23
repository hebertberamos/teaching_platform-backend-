package com.testproject.learn.servicies;

import com.testproject.learn.dtos.NotificationDTO;
import com.testproject.learn.entities.Notification;
import com.testproject.learn.entities.User;
import com.testproject.learn.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NotificationService {

    @Autowired
    private NotificationRepository repository;

    @Autowired
    private AuthenticationService authenticationService;

    @Transactional(readOnly = true)
    public Page<NotificationDTO> findAllByUser(boolean unreadOnly, Pageable pageable){
        // =>  Catching user
        User user = authenticationService.authenticated();

        Page<Notification> page = repository.find(user, unreadOnly, pageable);
        return page.map(NotificationDTO::new);
    }

}
