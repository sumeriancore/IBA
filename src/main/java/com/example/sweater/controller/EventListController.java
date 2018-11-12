package com.example.sweater.controller;

import com.example.sweater.repos.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class EventListController {

    @Autowired
    private EventRepo eventRepo;

    @GetMapping("/eventList")
    public String eventList(Model model){

        model.addAttribute("events",eventRepo.findAll());
        return "eventList";
    }
}
