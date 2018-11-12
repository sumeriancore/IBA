<#macro eventReg path>
    <form action="${path}" method="post">
        <div><label> Name of event : <input type="text" name="nameOfEvent"/> </label></div>
        <div><label> Type of event : <input type="text" name="typeOfEvent"/> </label></div>
        <div><label> Date of event : <input type="date" name="date"/></label></div>
        <div><label> Price : <input type="text" name="price"></label></div>
        <div><label> Max number of people : <input type="text" name="maxNumberOfPeople"></label></div>
        <div><label> Theme : <input type="text" name="theme"></label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div><input type="submit" value="Sign In"/></div>
    </form>
</#macro>