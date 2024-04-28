package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.RegisterUserDto;
import org.example.bookease.entity.User;
import org.example.bookease.mapper.UserMapper;
import org.example.bookease.repository.UserRepo;
import org.example.bookease.service.UserService;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepo userRepo;
    private final UserMapper userMapper;

    @Override
    public void save(RegisterUserDto registerUserDto) {
        User user = userMapper.registerUserDtoToUser(registerUserDto);
        userRepo.save(user);
    }
}