<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <%--    <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>--%>
    <%--    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>--%>
    <%--    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>--%>
    <style>
        #result_card img {
            max-width: 50%;
            height: auto;
            display: block;
            padding: 5px;
            margin-top: 10px;
            margin: auto;
        }
    </style>
</head>
<body>
<h2>상품 등록 (이미지 업로드 test)</h2>
<div>
    <input type="file" id="fileItem" name="uploadFile">
    <button onclick="uploadFile()">업로드</button>
</div>
<div id="uploadResult">
    <%--    <div id="result_card">--%>
    <%--        <div class="imgDeleteBtn">x</div>--%>
    <%--        <img src="/display?fileName=cat.jpg" alt="no">--%>
    <%--    </div>--%>
</div>
<script>

    function uploadFile() {
        let fileInput = document.getElementById('fileItem');
        let file = fileInput.files[0];

        console.log($(".imgDeleteBtn").length);

        // 이미지 존재시 삭제
        if ($(".imgDeleteBtn").length > 0) {
            deleteFile();
        }

        if (file) {
            let formData = new FormData();
            formData.append('file', file);

            fetch('/admin/imgUpload', {
                method: 'POST',
                body: formData
            })
                .then(response => response.json()) // 또는 response.text() 등을 사용
                .then(data => {
                    console.log("date의 값 = ", data);

                    showUploadImage(data);

                    // let imgElement = document.createElement('img');
                    // imgElement.src = data;
                    //
                    // // 이미지 추가
                    // document.body.appendChild(imgElement);
                })
                .catch(error => {
                    console.error('Upload failed:', error);
                    alert("이미지파일이 아닙니다.");
                });

        } else {
            console.error('No file');
        }
    }

    // 이미지 출력
    function showUploadImage(uploadResultArr) {

        // 전달 받은 데이터 검증
        if (!uploadResultArr) {
            return;
        }

        let uploadResult = $("#uploadResult");
        let obj = uploadResultArr;
        let str = "";
        let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.fileName);

        str += "<div id='result_card'>";
        str += "<img src='/display?fileName=" + fileCallPath + "'>";
        str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
        str += "</div>";

        uploadResult.append(str);
    }

    // 이미지 삭제
    function deleteFile() {
        let targetFile = $(".imgDeleteBtn").data("file");
        let targetDiv = $("#result_card")

        $.ajax({
            url: '/admin/deleteFile',
            data : {fileName : targetFile},
            dataType : 'text',
            type : 'POST',
            success : function(result){
                console.log(result);

                targetDiv.remove();
                $("input[type='file']").val("");

            },
            error : function(result){
                console.log(result);

                alert("파일을 삭제하지 못하였습니다.")
            }
        });

        // fetch("/admin/deleteFile", {
        //     method: 'POST',
        //     headers: {
        //         'Content-Type': 'application/json',
        //     },
        //     body: JSON.stringify({fileName: targetFile})
        // })
        //     .then(response => response.text())
        //     .then(result => {
        //         console.log(result);
        //
        //         targetDiv.remove();
        //         $("input[type='file']").val("");
        //     })
        //     .catch(error => {
        //         console.error("error", error);
        //         alert("error")
        //     })
    }

    // 이미지 삭제 버튼
    $("#uploadResult").on("click", ".imgDeleteBtn", function (e) {
        deleteFile();
    });
</script>
</body>
</html>
