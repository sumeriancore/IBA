package com.example.sweater.controller;

import com.example.sweater.domain.Event;
import com.example.sweater.repos.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

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

    @PostMapping("/eventList")
    public String eventFilter(@RequestParam String filter, Map<String, Object> model){

        List<Event> eventList = (List<Event>) eventRepo.findByTheme(filter);
        model.put("eventList", eventList);

        return "eventListFilter";
    }
}
