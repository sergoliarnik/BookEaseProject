package org.example.bookease.service.impl;

import org.example.bookease.entity.User;
import org.example.bookease.repository.UserRepo;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends AbstractCrudServiceImpl<User> {
    protected UserServiceImpl(UserRepo repo) {
        super(repo);
    }
}