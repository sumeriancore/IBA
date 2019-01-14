package com.example.sweater.controller;

import com.example.sweater.domain.Event;
import com.example.sweater.domain.TableUserEvent;
import com.example.sweater.domain.User;
import com.example.sweater.repos.EventRepo;
import com.example.sweater.repos.EventUserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/events")
public class ListOfUserEventController {
    @Autowired
    private EventUserRepo eventUserRepo;
    @Autowired
    private EventRepo eventRepo;

    @GetMapping
    public String myEvent(@AuthenticationPrincipal User user, Model model){
        List<TableUserEvent> listUserEventTables = (List<TableUserEvent>) eventUserRepo.findByUserId(user.getId());
        ArrayList<Event> listOfEvents = new ArrayList<>();
        for(TableUserEvent tableUserEvent : listUserEventTables){
            listOfEvents.add(eventRepo.findByEventId(tableUserEvent.getEventId()));
        }
        model.addAttribute(listOfEvents);
        if(listOfEvents.size() == 0){
            return "nullCountOfEvent";
        }
        return "myEvent";
    }
}
