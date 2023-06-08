<#import "blocks/template.ftlh" as t>
<@t.template user>
            <#list images as image>
                <a href="/images/${image.id}">
                    <img class="product" style="height: 100px" src="/images/${image.id}">
                </a>
            </#list>
    <hr>
    <p><h1 style="text-align: center">${product.title} | ${product.price} ₸</h1></p>
    <p style="text-align: center">${product.description}</p>
    <p style="text-align: center">Номер телефона продавца: <b>${authorProduct.phoneNumber}</b></p>

    <hr>
    <p style="text-align: center">
        <a href="/user/${authorProduct.id}">
            <img src="/static/images/avatar.png" alt="mdo" width="32" height="32" class="rounded-circle"> ${authorProduct.name}
        </a>
    </p>

</@t.template>