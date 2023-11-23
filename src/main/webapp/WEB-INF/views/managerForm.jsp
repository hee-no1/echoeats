<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h2>상품 등록 (이미지 업로드 test)</h2>
<div>
    <input type="file" id="fileItem" name="uploadFile">
</div>
<script>

    $(document).ready(function () {
        /* 이미지 업로드 */
        $("input[type='file']").on("change", function (e) {

            let formData = new FormData();
            let fileInput = $('input[name="uploadFile"]');
            let fileList = fileInput[0].files;
            let fileObj = fileList[0];

            if (!fileCheck(fileObj.name, fileObj.size)) {
                return false;
            }

            formData.append("uploadFile", fileObj);

            $.ajax({
                url: '/uploadImg',
                processData: false,
                contentType: false,
                data: formData,
                type: 'POST',
                dataType : 'json',
                success : function (result) {
                    alert("success");
                },
                error   : function(){ alert("error") }
            });
        });

        let regex = new RegExp("(.*?)\.(jpg|png)$");
        let maxSize = 1048576; //1MB

        const fileCheck = function (fileName, fileSize) {

            if (fileSize >= maxSize) {
                alert("파일 사이즈 초과");
                return false;
            }

            if (!regex.test(fileName)) {
                alert("해당 종류의 파일은 업로드할 수 없습니다.");
                return false;
            }

            return true;

        }
    });
</script>
</body>
</html>
