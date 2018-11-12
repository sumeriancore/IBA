package com.example.sweater.controller;


import com.example.sweater.domain.Event;
import com.example.sweater.domain.User;
import com.example.sweater.repos.EventRepo;
import com.example.sweater.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/event/registrationOnEvent")

public class RegistrationOnEventController {

    @Autowired
    private EventRepo eventRepo;

    @Autowired
    private UserRepo userRepo;

    @GetMapping("{event}")
    public String registrationOnEvent(@PathVariable Event event, Model model){

        model.addAttribute("event", event);

        return "registrationOnEvent";
    }

    @PostMapping("save")
    public String registrationOnEventSave(@RequestParam("eventId") Event event, @AuthenticationPrincipal User user){

        user.setCountOfEvents(user.getCountOfEvents()+1);
        userRepo.save(user);
        event.setNumberOfPeople(event.getNumberOfPeople()+1);
        eventRepo.save(event);
        return "redirect:/event/eventList";
    }
}
