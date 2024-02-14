package com.testproject.learn.servicies;

import com.testproject.learn.entities.User;
import com.testproject.learn.repositories.UserRepository;
import com.testproject.learn.servicies.exceptions.ForbiddenException;
import com.testproject.learn.servicies.exceptions.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuthenticationService implements UserDetailsService {

    @Autowired
    private UserRepository repository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return repository.findByEmail(username);
    }

    // =>  Method to return logged User
    @Transactional(readOnly = true)
    public User authenticated(){
        try {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            return repository.findByEmail(username);
        }
        catch(Exception e){
            throw new UnauthorizedException("Ivalid user");
        }
    }

    // =>  Method to validate if User are the self id or ADMIN
    public void validateSelfOrAdmin(Long id){
        User user = authenticated();
        if(!user.getId().equals(id) && !user.hasRoleAdmin()){
            throw new ForbiddenException("Access denied");
        }
    }
}
