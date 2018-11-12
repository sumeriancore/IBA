<#import "parts/common.ftl" as c>

<@c.page>
    Event editor
<form action="/event" method="post">

    <div>
      Name of event
      <input type="text" name="nameOfEvent" value="${event.nameOfEvent}">
    </div>

    <div>
        Type of event
        <input type="text" name="typeOfEvent" value="${event.typeOfEvent}">
    </div>

    <div>
        Date
        <input type="date" name="date" value="${event.date}">
    </div>

    <div>
        Price
        <input type="text" name="price" value="${event.price}">
    </div>

    <div>
        Max number of people
        <input type="text" name="maxNumberOfPeople" value="${event.maxNumberOfPeople}">
    </div>

    <div>
        Theme
        <input type="text" name="theme" value="${event.theme}">
    </div>

    <input type="hidden" value="${event.id}" name="eventId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>

</form>

<form action="/event/deleteEvent" method="post">
    <input type="hidden" value="${event.id}" name="eventId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Delete</button>
</form>

</@c.page>