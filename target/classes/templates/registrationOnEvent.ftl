<#import "parts/common.ftl" as c>
<#import "parts/userRegistrationOnEvent.ftl" as r>

<@c.page>
    <style>
        .text{
            text-align: center;
        }
    </style>
<div class="text">
    <h2 style="color: blueviolet">Registration on event</h2>
</div>
<@r.userRegistrationOnEvent "save"/>
</@c.page>