package com.testproject.learn.servicies;

import com.testproject.learn.dtos.UserDTO;
import com.testproject.learn.entities.User;
import com.testproject.learn.repositories.UserRepository;
import com.testproject.learn.servicies.exceptions.ResourcesNotFoundException;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository repository;

    @Autowired
    private AuthenticationService authenticationService;


    @Transactional
    public UserDTO findById(Long id){
        // =>  Method of recovering the user id only if it is the same id or if the user is ADMIN
        authenticationService.validateSelfOrAdmin(id);
        Optional<User> obj = repository.findById(id);
        User user = obj.orElseThrow(() -> new ResourcesNotFoundException("User not found"));

        return new UserDTO(user);
    }

}
