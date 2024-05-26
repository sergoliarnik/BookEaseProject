package org.example.bookease.service;

import org.example.bookease.dto.request.AddRequestDto;
import org.example.bookease.dto.request.RequestDto;

import java.util.List;

public interface RequestService {

    void save(AddRequestDto addRequestDto);

    List<RequestDto> findAll();
}
