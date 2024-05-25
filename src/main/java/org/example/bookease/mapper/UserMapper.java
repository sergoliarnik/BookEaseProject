package org.example.bookease.mapper;

import org.example.bookease.dto.user.RegisterUserDto;
import org.example.bookease.dto.user.UserDto;
import org.example.bookease.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface UserMapper {
    User registerUserDtoToUser(RegisterUserDto dto);

    UserDto userToUserDto(User user);
}
