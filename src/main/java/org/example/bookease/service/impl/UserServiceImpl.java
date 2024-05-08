package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.RegisterUserDto;
import org.example.bookease.entity.User;
import org.example.bookease.entity.UserRole;
import org.example.bookease.mapper.UserMapper;
import org.example.bookease.repository.UserRepo;
import org.example.bookease.service.UserService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepo userRepo;
    private final UserMapper userMapper;
    private final PasswordEncoder passwordEncoder;

    @Override
    public void save(RegisterUserDto registerUserDto) {
        User user = userMapper.registerUserDtoToUser(registerUserDto);
        user.setId(UUID.randomUUID().toString());
        user.setRole(UserRole.CUSTOMER);
        user.setPassword(passwordEncoder.encode(registerUserDto.getPassword()));
        userRepo.save(user);
    }
}