package com.example.sweater.repos;

import com.example.sweater.domain.Event;
import org.springframework.data.repository.CrudRepository;

public interface EventRepo extends CrudRepository<Event, Long> {
    Event findByNameOfEvent(String nameOfEvent);
}
