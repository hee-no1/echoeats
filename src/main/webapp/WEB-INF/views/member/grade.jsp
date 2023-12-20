
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="membership">
    <h2>전체 회원 등급</h2>
    <ul class="grade-list">


        <c:forEach var="grade" items="${grade}">
            <li class="grade-item active ${grade.gd_name}">
                <div class="grade-title">${grade.gd_name}</div>
                <div class="grade-benefit">적립률: ${grade.acm_rate}% </div>
                <div class="grade-info">전월 실적<br>${grade.gd_condition}</div>
            </li>
        </c:forEach>

    </ul>
</div>
<script>
    $(document).ready(function () {

        var userId = '<%= request.getAttribute("id") %>';
        console.log('userId : '+userId);

        // contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        $.ajax({
            url: "grade_data",
            method: "GET",
            data: { id: userId },
            dataType: "json",
            success: function(data) {
                console.log('Received data:', data.gd_name);
                $('.' + data.gd_name).css('border', '1px solid blue');

            },
            error: function(error) {

                console.error('Error:', error);
            }
        });

    });

</script>
