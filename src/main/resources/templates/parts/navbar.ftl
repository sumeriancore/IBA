<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">


    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/" style="color: blueviolet; margin-top: 2px"><h5>Home</h5></a>
            </li>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user" style="color: blueviolet; margin-top: 2px"><h5>User list</h5></a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/event/eventRegistration" style="color: blueviolet; margin-top: 2px"><h5>Event registration</h5></a>
            </li>
            </#if>
            <li class="nav-item">
                <a class="nav-link" href="/event/eventList" style="color: blueviolet; margin-top: 2px"><h5>Event list</h5></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/events" style="color: blueviolet; margin-top: 2px"><h5>My events</h5></a>
            </li>
        </ul>
        <#--<div class="nav-item" style="margin-right: 150px">-->
            <#--<form  method="post" action="/event/eventList">-->
                <#--<input class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" type="text" name="filter" value="${""?ifExists}" style="height: 20px">-->
                <#--<div style="margin-left: 300px">-->
                    <#--<button type="submit" class="btn btn-dark" style="margin-right: 50px"><h5 style="color: blueviolet">Search</h5></button>-->
                <#--</div>-->
                <#--<input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
            <#--</form>-->
        <#--</div>-->
        <div class="nav-item" >
            <form style="width: 500px; height: 50px;" method="post" action="/event/eventList">
                <button type="submit" class="btn btn-dark" style="margin-left: 370px; margin-top: 2px"><h5 style="color: blueviolet">Search</h5></button>
                <input class="form-control" style="width: 200px; margin-left: 150px; margin-top: -43px"  type="text" name="filter" value="${""?ifExists}">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            </form>
        </div>
        <div class="navbar-text mr-3" style="color: blueviolet"><h5>${name}</h5></div>
        <@l.logout />
    </div>
</nav>
