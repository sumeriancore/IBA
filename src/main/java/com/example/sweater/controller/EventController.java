package com.example.sweater.controller;

import com.example.sweater.domain.Event;
import com.example.sweater.repos.EventRepo;
import com.example.sweater.repos.EventUserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/event")
@PreAuthorize("hasAuthority('ADMIN')")

public class EventController {

    @Autowired
    private EventRepo eventRepo;

    @Autowired
    private EventUserRepo eventUserRepo;

    @GetMapping("eventRegistration")
    public String eventRegistration(){return "eventRegistration";}

    @PostMapping("eventRegistration")
    public String addEvent(Event event, Map<String, Object> model){

        Event eventFromDatabase = eventRepo.findByNameOfEvent(event.getNameOfEvent());

        if(eventFromDatabase != null){
            model.put("message", "Event is exists!");
            return "eventRegistration";
        }
        eventRepo.save(event);

        return "redirect:/event/eventRegistration";
    }

    @GetMapping("{event}")
    public String eventEditForm(@PathVariable Event event, Model model){

        model.addAttribute("event", event);
        return "eventEdit";

    }

    @PostMapping
    public String eventSave(@RequestParam String nameOfEvent,
                            @RequestParam String typeOfEvent,
                            @RequestParam String date,
                            @RequestParam int price,
                            @RequestParam int maxNumberOfPeople,
                            @RequestParam String theme,
                            @RequestParam("eventId") Event event){

        event.setNameOfEvent(nameOfEvent);
        event.setTypeOfEvent(typeOfEvent);
        event.setDate(date);
        event.setPrice(price);
        event.setMaxNumberOfPeople(maxNumberOfPeople);
        event.setTheme(theme);

        eventRepo.save(event);

        return "redirect:/event/eventList";

    }

    @PostMapping("deleteEvent")
    public String deleteEvent(@RequestParam("eventId") Event event){

        eventRepo.delete(event);
        eventUserRepo.delete(eventUserRepo.findByEventId(event.getId()));

        return "redirect:/event/eventList";
    }
}

