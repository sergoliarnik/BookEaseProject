package org.example.bookease.mapper;

import org.example.bookease.dto.request.AddRequestDto;
import org.example.bookease.dto.request.RequestDto;
import org.example.bookease.entity.Request;
import org.mapstruct.Mapper;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface RequestMapper {
    Request addRequestDtoToRequest(AddRequestDto requestDto);

    RequestDto requestToRequestDto(Request requestDto);
}
