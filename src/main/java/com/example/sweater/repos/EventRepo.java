package com.example.sweater.repos;

import com.example.sweater.domain.Event;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;

public interface EventRepo extends CrudRepository<Event, Long> {
    Event findByNameOfEvent(String nameOfEvent);

    Event findByEventId(Long id);

    Collection<Event> findByTheme(String theme);
}
