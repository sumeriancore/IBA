<#macro userRegistrationOnEvent path>
    <div>
        <form action="save" method="post">
            <input type="hidden" value="${event.id}" name="eventId">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button type="submit" class="btn btn-dark" style="width: 150px; height: 50px; color: blueviolet; margin-left: 480px;
            margin-top: 50px"><h5>+1 Partaker</h5></button>
        </form>
    </div>
</#macro>