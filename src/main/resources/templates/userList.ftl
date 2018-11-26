<#import "parts/common.ftl" as c>

<@c.page>
<h3 style="color: blueviolet;  margin-left: 420px">List of users</h3>
<table  style="margin-top: 50px; margin-left: 340px">

    <thead align="center">

    <tr>

        <th class="text" width="150px"><h5>Name</h5></th>
        <th class="text" width="150px"><h5>Role</h5></th>
        <th></th>

    </tr>

    </thead>
    <tbody>

    <#list users as user>
        <tr align="center">
            <td style="margin-top: 10px"><h6>${user.username}</h6></td>
            <td><#list user.roles as role><h6>${role}</h6><#sep>, </#list></td>
            <td>
                <form action="/user/${user.id}" method="get">
                <#--<input type="hidden" value="${event.id}" name="eventId">-->
                    <#--<input type="hidden" value="${_csrf.token}" name="_csrf">-->
                    <button type="submit" style="margin-left: 15px;margin-top: 5px;color: blueviolet" class="btn btn-dark"><h6>Edit</h6></button>
                </form>
            </td>
        </tr>
    </#list>

    </tbody>
</table>
</@c.page>