<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>


<@c.page>
<#--<head>-->
    <#--<link rel="stylesheet" href="C:\Users\stepa\IdeaProjects\sweater\src\main\resources\styles\main.css"/>-->
<#--</head>-->
<h3 style="color: blueviolet; margin-left: 420px" >List of events</h3>
<table style="margin-top: 50px; margin-left: 130px">
    <thead align="center" class="thead-dark">
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

    <#list events as event>

    <tr align="center">

            <td width="170px"><h6>${event.nameOfEvent}</h6></td>
            <td><h6>${event.typeOfEvent}</h6></td>
            <td><h6>${event.date}</h6></td>
            <td><h6>${event.theme}</h6></td>
            <td><h6>${event.price}</h6></td>
            <#if isAdmin>
            <td>
                <form action="/event/${event.id}">
                    <button type="submit" class="btn btn-dark" style="color: blueviolet">Edit</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </form>
            </td>

            </#if>
             <td>
                <form action="/event/registrationOnEvent/${event.id}">
                    <button type="submit" class="btn btn-dark" style="color: blueviolet; margin-left: 5px">Registration</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </form>
             </td>
    </tr>

    </#list>
    </tbody>
</table>
</@c.page>