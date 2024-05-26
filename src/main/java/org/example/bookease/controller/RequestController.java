package org.example.bookease.controller;

import lombok.RequiredArgsConstructor;
import org.example.bookease.dto.request.AddRequestDto;
import org.example.bookease.service.RequestService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class RequestController {
    private final RequestService requestService;

    @GetMapping("/requests")
    @PreAuthorize("hasAnyAuthority('OWNER')")
    public ModelAndView getRequests() {
        return new ModelAndView("requests")
                .addObject("requests", requestService.findAll());
    }

    @GetMapping("/contact")
    public ModelAndView contact(AddRequestDto addRequestDto) {
        return new ModelAndView("contact")
                .addObject("addRequestDto", addRequestDto);
    }

    @PostMapping("/requests")
    public ModelAndView save(AddRequestDto addRequestDto) {
        requestService.save(addRequestDto);

        return new ModelAndView("redirect:/");
    }
}
