<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h3 align="center" style="color: blueviolet">Registration</h3>
    ${message?ifExists}
<@l.registration "/registration" />
</@c.page>