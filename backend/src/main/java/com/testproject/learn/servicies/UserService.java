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


    @Transactional
    public UserDTO findById(Long id){
        Optional<User> obj = repository.findById(id);
        User user = obj.orElseThrow(() -> new ResourcesNotFoundException("User not found"));

        return new UserDTO(user);
    }

}
