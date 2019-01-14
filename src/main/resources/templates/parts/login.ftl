<#macro login path>
    <form action="${path}" method="post">
        <div><label> <h6>User Name:</h6>  <input class="form-control" type="text" name="username"/> </label></div>
        <div><label> <h6>Password:</h6> <input class="form-control" type="password" name="password"/> </label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-dark"><h6 style="color: blueviolet">Sign In</h6></button>
    </form>
</#macro>

<#macro registration path>
    <form action="${path}" method="post">
        <div><label> <h6>User Name :</h6> <input class="form-control" type="text" name="username"/> </label></div>
        <div><label> <h6>User Surname :</h6> <input class="form-control" type="text" name="surname"/> </label></div>
        <div><label> <h6>Password :</h6> <input class="form-control" type="password" name="password"/> </label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-dark"><h6 style="color: blueviolet">Sign In</h6></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button type="submit" style="color: blueviolet" class="btn btn-dark"><h5>Sign out</h5></button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</#macro>