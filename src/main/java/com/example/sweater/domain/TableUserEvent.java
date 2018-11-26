package com.example.sweater.domain;

import javax.persistence.*;

@Entity
@Table(name = "USER_EVENT")
public class TableUserEvent {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    private Long userId;
    private Long eventId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getEventId() {
        return eventId;
    }

    public void setEventId(Long eventId) {
        this.eventId = eventId;
    }
}
