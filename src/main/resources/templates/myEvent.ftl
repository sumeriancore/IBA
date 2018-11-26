<#import "parts/common.ftl" as c>

<@c.page>
<h3 style="color: blueviolet; margin-left: 420px">List of my events</h3>
<table style="margin-top: 50px; margin-left: 180px">
    <thead align="center">
        <tr>
            <th class="event_list" width="150px"><h4>Name</h4></th>
            <th class="event_list" width="120px"><h4>Type</h4></th>
            <th class="event_list" width="150px"><h4>Date</h4></th>
            <th class="event_list" width="150px"><h4>Theme</h4></th>
            <th class="event_list" width="150px"><h4>Price</h4></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <#list eventList as event>
    <tr align="center">
        <td><h6>${event.nameOfEvent}</h6></td>
        <td><h6>${event.typeOfEvent}</h6></td>
        <td><h6>${event.date}</h6></td>
        <td><h6>${event.theme}</h6></td>
        <td><h6>${event.price}</h6></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>