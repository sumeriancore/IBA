<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page >
    <div>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </div>
    <div>
        <form method="post" action="/main" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Name: " />
            <input type="text" name="tag" placeholder="Tag">
            <input type="file" name="file">
            <button type="submit">Добавить</button>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="post" action="/filter">
        <input type="text" name="filter" value="${"filter"?ifExists}">
        <button type="submit">Найти</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
    No messages
    </#list>
</@c.page>