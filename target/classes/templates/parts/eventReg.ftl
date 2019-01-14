<#macro eventReg path>
    <form action="${path}" method="post">
        <div><label> <h5>Name of event :</h5> <input class="form-control" type="text" name="nameOfEvent" /> </label></div>
        <div><label> <h5>Type of event :</h5> <input class="form-control" type="text" name="typeOfEvent"/> </label></div>
        <div><label> <h5>Date of event :</h5> <input class="form-control"type="date" name="date"/></label></div>
        <div><label> <h5>Price :</h5><input class="form-control" type="text" name="price" ></label></div>
        <div><label> <h5>Max num of people :</h5> <input class="form-control" type="text" name="maxNumberOfPeople"></label></div>
        <div><label> <h5>Theme :</h5> <input class="form-control" type="text" name="theme" ></label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-dark" type="submit" style="color: blueviolet; margin-top: 20px"><h5>Sign In</h5></button>
    </form>
</#macro>