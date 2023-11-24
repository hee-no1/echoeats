<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
</head>
<body>
<div class="form_section">
    <div class="form_section_title">
        <label>상품 이미지</label>
    </div>
    <div class="form_section_content">
        <input type="file" multiple id="fileItem" name='uploadFile' style="height: 30px;">
    </div>
</div>
<script>
    /* 이미지 업로드 */
    $("input[type='file']").on("change", function(e){
        alert("동작");

        let formData = new FormData();
        let fileInput = $('input[name="uploadFile"]');
        let fileList = fileInput[0].files;
        let fileObj = fileList[0];

        if (!fileCheck(fileObj.name, fileObj.size)) {
            return false;
        }

        for(let i = 0; i < fileList.length; i++){
            formData.append("uploadFile", fileList[i]);
        }

        $.ajax({
            url : '/prodEnroll',
            processData : false,
            contentType : false,
            data : formData,
            type : 'POST',
            dataType : 'json',
            mimeType: 'multipart/form-data',
            success : function (result) {
                alert("success");
                console.log(result);
            },
            error : function (result) {
                alert("fail");
            }
        });

    });

    /* var, method related with attachFile */
    let regex = new RegExp("(.*?)\.(jpg|png|jpeg)$");
    let maxSize = 10485760; //1MB

    function fileCheck(fileName, fileSize) {

        if (!regex.test(fileName)) {
            alert("해당 종류의 파일 업로드할 수 없습니다.")
            return false;
        }

        if (fileSize >= maxSize) {
            alert("파일 사이즈 초과");
            return false;
        }

        return true;

    }
</script>
</body>
</html>
