<#import "parts/common.ftl" as c>

<@c.page>
<h3 style="color: blueviolet" align="center">Event editor</h3>
<form action="/event" method="post" enctype="multipart/form-data">
        <table  style="margin-top: 20px">
            <thead align="center">

            <tr>

                <th class="event_list" width="150px"><h4>Name</h4></th>
                <th class="event_list" width="120px"><h4>Type</h4></th>
                <th class="event_list" width="150px"><h4>Date</h4></th>
                <th class="event_list" width="150px"><h4>Theme</h4></th>
                <th class="event_list" width="170px"><h4>Partakers</h4></th>
                <th class="event_list" width="150px"><h4>Price</h4></th>
                <th></th>

            </tr>
            <tr align="center">
                <th class="text-input" width="50px"><input class="form-control" type="text" name="nameOfEvent" value="${event.nameOfEvent}"></th>
                <th class="text-input" width="50px"><input class="form-control" type="text" name="typeOfEvent" value="${event.typeOfEvent}"></th>
                <th class="text-input" width="50px"><input class="form-control" type="date" name="date" value="${event.date}"></th>
                <th class="text-input" width="50px"><input class="form-control" type="text" name="theme" value="${event.theme}"></th>
                <th class="text-input" width="50px"><input class="form-control" type="text" name="maxNumberOfPeople" value="${event.maxNumberOfPeople}"></th>
                <th class="text-input" width="50px"><input class="form-control" type="text" name="price" value="${event.price}"></th>
            </tr>
            </thead>
        </table>
    <input type="hidden" value="${event.id}" name="eventId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button class="btn btn-dark" type="submit" style="margin-top: 15px; color: blueviolet"><h6>Save</h6></button>

</form>

<form action="/event/deleteEvent" method="post">
    <input type="hidden" value="${event.id}" name="eventId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button class="btn btn-dark" type="submit" style="margin-top: 15px; color: blueviolet"><h6>Delete</h6></button>
</form>

</@c.page>