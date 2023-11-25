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
    <style type="text/css">
        #result_card img{
            max-width: 100%;
            height: auto;
            display: block;
            padding: 5px;
            margin-top: 10px;
            margin: auto;
        }
        #result_card {
            position: relative;
        }
        .imgDeleteBtn{
            position: absolute;
            top: 0;
            right: 5%;
            background-color: #ef7d7d;
            color: wheat;
            font-weight: 900;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            line-height: 26px;
            text-align: center;
            border: none;
            display: block;
            cursor: pointer;
        }

    </style>
</head>
<body>
<div class="form_section">
    <div class="form_section_title">
        <label>상품 이미지</label>
    </div>
    <div class="form_section_content">
        <input type="file" multiple id="fileItem" name='uploadFile' style="height: 30px;">
        <div id="uploadResult">
<%--            <div id="result_id">--%>
<%--                <div class="imgDeleteBtn">x</div>--%>
<%--                <img src="/upload?fileName=test.jpeg">--%>
<%--            </div>--%>
        </div>
    </div>
</div>
<script>
    /* 이미지 업로드 */
    $("input[type='file']").on("change", function(e){
        alert("동작");
        // 이미지 존재시 삭제
        if ($(".imgDeleteBtn").length > 0) {
            deleteFile();
        }

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
            url : '/uploadAjaxAction',
            processData : false,
            contentType : false,
            data : formData,
            type : 'POST',
            dataType : 'json',
            mimeType: 'multipart/form-data',
            success : function (result) {
                alert("success");
                console.log(result);
                showUploadImage(result);
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

    // 이미지 출력
    function showUploadImage(uploadResultArr) {
        // 전달받은 데이터 검증
        if (!uploadResultArr || uploadResultArr.length === 0) {
            return;
        }
        let uploadResult = $("#uploadResult");
        let obj = uploadResultArr[0];
        let str = "";
        let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
        str += "<div id='result_card'>";
        str += "<img src='/upload?fileName=" + fileCallPath + "'>";
        str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
        str += "</div>";

        uploadResult.append(str);
    }

    // 이미지 삭제 버튼 동작
    $("#uploadResult").on("click", ".imgDeleteBtn", function(e){
        deleteFile();
    });

    // 이미지 삭제
    function deleteFile() {
        let targetFile = $(".imgDeleteBtn").data("file");
        let tagetDiv = $("#result_card");
        $.ajax({
            url : '/deleteFile',
            data : {fileName : targetFile},
            dataType : 'text',
            type : 'POST',
            success : function (result) {
                console.log(result);
                tagetDiv.remove();
                $("input[type='file']").val("");
                alert("success");
            },
            error : function (result) {
                console.log(result);
                alert("fail");
            }
        })
    }
</script>
</body>
</html>
