package com.pofol.main.product.domain;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@Slf4j
public class AdminController {

    // 첨부 파일 업로드
    @PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<List<AttachImageDto>> prodEnrollPOST(MultipartFile[] uploadFile) {

        // 이미지 파일 체크
        for (MultipartFile multipartFile : uploadFile) {
            File checkFile = new File(multipartFile.getOriginalFilename());
            String type = null;
            try {
                type = Files.probeContentType(checkFile.toPath());
                log.info("MIME TYPE" + type);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            if (!type.startsWith("image")) {
                List<AttachImageDto> list = null;
                return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
            }
        }
        // MultipartFile : 뷰에서 전송한 multipart타입 파일을 다룰 수 있도록 해주는 인터페이스
        String uploadFolder = "/Users/hyungjunlim/Documents/programming/echoeats_items";

        // 날짜 폴더 경로
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String formatted = simpleDateFormat.format(date);
        String datePath = formatted.replace("-", File.separator);

        // 파일 생성
        File uploadPath = new File(uploadFolder, datePath);
        if (uploadPath.exists() == false) {
            uploadPath.mkdirs();
        }

        // 이미지 정보 담는 객체
        List<AttachImageDto> list = new ArrayList<>();

        for (MultipartFile multipartFile : uploadFile) {
            // 이미지 정보 객체
            AttachImageDto dto = new AttachImageDto();
            // 파일 이름
            String uploadFileName = multipartFile.getOriginalFilename();
            dto.setFileName(uploadFileName);
            dto.setUploadPath(datePath);
            // UUID 적용 파일 이름
            String uuid = UUID.randomUUID().toString();
            dto.setUuid(uuid);
            uploadFileName = uuid + "_" + uploadFileName;
            // 파일 위치, 파일 이름을 합친 File객체
            File saveFile = new File(uploadPath, uploadFileName);
            // 파일 저장
            try {
                multipartFile.transferTo(saveFile);
                File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);

                BufferedImage bo_image = ImageIO.read(saveFile);
                // 비율
                double ratio = 3;
                // 넓이, 높이
                int width = (int) (bo_image.getWidth() / ratio);
                int height = (int) (bo_image.getHeight() / ratio);
//                BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
//                Graphics2D graphics = bt_image.createGraphics();
//                graphics.drawImage(bo_image, 0, 0, width, height, null);
//                ImageIO.write(bt_image, "jpg", thumbnailFile);
                /** thumbnailator 라이브러리 사용 **/
                Thumbnails.of(saveFile)
                        .size(width, height)
                        .toFile(thumbnailFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
            list.add(dto);
        }
        return new ResponseEntity<List<AttachImageDto>>(list, HttpStatus.OK);
    }

}
