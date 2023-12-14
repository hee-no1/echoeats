<%--
  Created by IntelliJ IDEA.
  User: wooHj
  Date: 2023-12-12
  Time: 오후 5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
    가<input type="text" class="a">
    나<input type="text" class="b">
    다<input type="text" class="c">
    라<input type="text" class="d">
    <button class="but"></button>
<script>
    let but = $('.but');
    but.on("click", function (){
        let a = $('.a').val();
        let b = $('.b').val();
        let c = $('.c').val();
        let d = $('.d').val();
        console.log(a,b,c);
        var abcDto = {
            a: a,
            b: b,
            c: c
        };
        var data = {
            abcDto: abcDto,
            d: d
        };

        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "abcd",
            data: JSON.stringify(data),
            success: function (response) {
                console.log("Success: " + response);
            },
            error: function (error) {
                console.log("Error: " + error);
            }
        });

    });

</script>
</body>
</html>
