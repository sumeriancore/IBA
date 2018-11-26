package com.example.sweater.controller;


import com.example.sweater.domain.Event;
import com.example.sweater.domain.TableUserEvent;
import com.example.sweater.domain.User;
import com.example.sweater.repos.EventRepo;
import com.example.sweater.repos.EventUserRepo;
import com.example.sweater.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("ALL")
@Controller
@RequestMapping("/event/registrationOnEvent")
public class RegistrationOnEventController {

//    TableUserEvent tableUserEvent = new TableUserEvent();

    @Autowired
    private EventUserRepo eventUserRepo;

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

        List<TableUserEvent> listUserEventTables = (List<TableUserEvent>) eventUserRepo.findByUserId(user.getId());
        ArrayList<Event> listOfEvents = new ArrayList<>();
        for(TableUserEvent tableUserEvent : listUserEventTables){
            listOfEvents.add(eventRepo.findByEventId(tableUserEvent.getEventId()));
        }
        for(Event eventInList : listOfEvents){
            if(event.getDate().equals(eventInList.getDate())){
                return "errorReg";
            }
        }
        if(event.getMaxNumberOfPeople() == event.getNumberOfPeople()){
            return "errorReg";
        }else {
            TableUserEvent tableUserEvent = new TableUserEvent();
            tableUserEvent.setEventId(event.getId());
            tableUserEvent.setUserId(user.getId());
            eventUserRepo.save(tableUserEvent);
            user.setCountOfEvents(user.getCountOfEvents()+1);
            userRepo.save(user);
            event.setNumberOfPeople(event.getNumberOfPeople()+1);
            eventRepo.save(event);

            return "redirect:/event/eventList";
        }
    }
}
