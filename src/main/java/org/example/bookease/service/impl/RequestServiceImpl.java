package org.example.bookease.service.impl;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.request.AddRequestDto;
import org.example.bookease.dto.request.RequestDto;
import org.example.bookease.entity.Request;
import org.example.bookease.mapper.RequestMapper;
import org.example.bookease.repository.RequestRepo;
import org.example.bookease.service.RequestService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class RequestServiceImpl implements RequestService {
    private final RequestMapper requestMapper;
    private final RequestRepo requestRepo;

    @Override
    @Transactional()
    public void save(AddRequestDto addRequestDto) {
        Request request = requestMapper.addRequestDtoToRequest(addRequestDto);

        request.setId(UUID.randomUUID().toString());

        requestRepo.save(request);
    }

    @Override
    public List<RequestDto> findAll() {
        return requestRepo.findAll().stream()
                .map(requestMapper::requestToRequestDto)
                .toList();
    }
}
