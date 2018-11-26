<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<h3 align="center" style="color: blueviolet">Login page</h3>
<@l.login "/login" />
<a href="/registration"><h6 style="color: blueviolet">Registration</h6></a>
</@c.page>