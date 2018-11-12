<#import "parts/common.ftl" as c>

<@c.page>
<head>
    <link rel="stylesheet" href="C:\Users\stepa\IdeaProjects\sweater\src\main\resources\styles\main.css"/>
</head>
List of events
<table>
    <thead>

    <tr>

        <th class="event_list" width="150px">Name</th>
        <th class="event_list" width="120px">Type</th>
        <th class="event_list" width="150px">Date</th>
        <th class="event_list" width="150px">Theme</th>
        <th class="event_list" width="150px">Price</th>
        <th></th>

    </tr>

    </thead>
    <tbody>

    <#list events as event>

    <tr>

        <td>${event.nameOfEvent}</td>
            <td>${event.typeOfEvent}</td>
            <td>${event.date}</td>
            <td>${event.theme}</td>
            <td>${event.price}</td>
            <td><a href="/event/${event.id}">edit</a></td>
            <td><a href="/event/registrationOnEvent/${event.id}">registration</a></td>

        </tr>

    </#list>

    </tbody>
</table>
</@c.page>