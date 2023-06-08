<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BUYSELL</title>
</head>
<body>
    <h1>BUYSELL</h1><hr>
    <h4>Панель администратора</h4>
    <table border="1">
        <tr>
            <th>Email</th>
            <th>Номер телефона</th>
            <th>Активность</th>
            <th>Роли</th>
            <th>Бан</th>
            <th>Радактирование</th>
            <th>Подробная информация</th>
        </tr>
        <#list users as user>
            <tr>
                <td>${user.email}</td>
                <td>${user.phoneNumber}</td>
                <td><#if user.active>true<#else>false</#if></td>
                <td><#list user.roles as role>${role}</#list></td>
                <td><form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Бан">
                    </form></td>
                <td><a href="/admin/user/edit/${user.id}">Редактирование</a></td>
                <td>
                    <a href="/user/${user.id}">Подробная информация</a>
                </td>
            </tr>
            <#else>
            <h3>Пользователей нет</h3>
        </#list>
    </table>
    <hr>

</body>
</html>