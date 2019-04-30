package com.medra.neurologia.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.medra.neurologia.domain.User;
 
@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    public User findByUserName(String username);
     
}