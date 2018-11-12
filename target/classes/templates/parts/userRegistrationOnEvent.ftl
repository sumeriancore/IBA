<#macro userRegistrationOnEvent path>
    <form action="save" method="post">
        <input type="hidden" value="${event.id}" name="eventId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">+1 Partaker</button>
    </form>
</#macro>