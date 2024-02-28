package org.example.bookease.controller;

import org.example.bookease.entity.Room;
import org.example.bookease.service.RoomService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rooms")
public class RoomController extends AbstractController<Room> {
    protected RoomController(RoomService service) {
        super(service);
    }
}
