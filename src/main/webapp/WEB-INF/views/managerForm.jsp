<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<%--    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>--%>
    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
<h2>상품 등록 (이미지 업로드 test)</h2>
<div>
    <input multiple type="file" id="fileItem" name="uploadFile">
    <button onclick="uploadFile()">업로드</button>
</div>
<img src="C:\upload\2023\11\23\cat.jpg" alt="no">
<script>

    function uploadFile() {
        let fileInput = document.getElementById('fileItem');
        let file = fileInput.files[0];

        if (file) {
            let formData = new FormData();
            formData.append('file', file);

            fetch('/upload', {
                method: 'POST',
                body: formData
            })
                .then(response => response.text()) // 또는 response.text() 등을 사용
                .then(data => {
                    console.log("1111111111111111111111111" + data);
                    // 이미지를 표시할 엘리먼트 생성 또는 가져오기
                    let imgElement = document.createElement('img');
                    imgElement.src = data;

                    // 이미지를 어딘가에 추가
                    document.body.appendChild(imgElement);
                })
                .catch(error => {
                    console.error('Upload failed:', error);
                });








        } else {
            console.error('No file selected.');
        }
    }







   $(document).ready(function () {

       /* 이미지 업로드 */
       // $("input[type='file']").on("change", function (e) {
       //
       //     let formData = new FormData();
       //     let fileInput = $('input[name="uploadFile"]');
       //     let fileList = fileInput[0].files;
       //     let fileObj = fileList[0];
       //
       //     if (!fileCheck(fileObj.name, fileObj.size)) {
       //
       //         return false;
       //     }
       //     formData.append("uploadFile", fileObj);
       //
       //     console.log("fileList", fileList);
       //     console.log("fileObj", fileObj);
       //     console.log("fileName : " + fileObj.name);
       //     console.log("fileSize : " + fileObj.size);
       //     console.log("fileType(MimeType) : " + fileObj.type);
       //     console.log(formData);
       //     console.log("uploadFile", formData.get("uploadFile"));
       //
       //
       //     $.ajax({
       //         url: '/uploadAjaxAction',
       //         processData : false,
       //         contentType : false,
       //         data : formData,
       //         type : 'GET',
       //         dataType : 'json',
       //         success: function (result) {
       //             console.log(result);
       //             alert("success");
       //         },
       //         error: function () {
       //             alert("error");
       //         }
       //     });
       // });
       //
       // let regex = new RegExp("(.*?)\.(jpg|png)$");
       // let maxSize = 1048576; //1MB
       //
       // const fileCheck = function (fileName, fileSize) {
       //
       //     if (fileSize >= maxSize) {
       //         alert("파일 사이즈 초과");
       //         return false;
       //     }
       //
       //     if (!regex.test(fileName)) {
       //         alert("해당 종류의 파일은 업로드할 수 없습니다.");
       //         return false;
       //     }
       //
       //     return true;
       //
       // }
   });
</script>
</body>
</html>
