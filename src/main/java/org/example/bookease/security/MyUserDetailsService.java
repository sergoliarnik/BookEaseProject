package org.example.bookease.security;

import lombok.RequiredArgsConstructor;
import org.example.bookease.entity.User;
import org.example.bookease.repository.UserRepo;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MyUserDetailsService implements UserDetailsService {
    private final UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> userOp = userRepo.findByEmail(username);
        User user = userOp
                .orElseThrow(() -> new UsernameNotFoundException("User with email " + username + " not found"));
        return new MyUserDetails(user);
    }
}
