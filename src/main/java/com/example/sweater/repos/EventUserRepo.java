package com.example.sweater.repos;

import com.example.sweater.domain.TableUserEvent;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;

public interface EventUserRepo extends CrudRepository<TableUserEvent, Long> {
    Collection<TableUserEvent> findByUserId(Long userId);

    TableUserEvent findByEventId(Long eventId);
}
