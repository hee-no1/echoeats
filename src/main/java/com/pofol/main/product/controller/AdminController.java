package com.pofol.main.product.controller;

import com.pofol.main.product.domain.AttachImageDto;
import com.pofol.main.product.domain.ProdDto;
import com.pofol.main.product.domain.ProductDto;
import com.pofol.main.product.service.ProdService;
import com.pofol.main.product.service.ProductService;
import net.coobird.thumbnailator.Thumbnails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger log = LoggerFactory.getLogger(AdminController.class);

    private final ProductService productService;

    @Autowired
    public AdminController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/main")
    public void admainMainGET() throws Exception {
        log.info("admainMainGET");
    }

    // 상품 등록 페이지 접속
    @GetMapping("/productEnroll")
    public void prodEnrollGET() throws Exception {
        log.info("상품등록페이지 접속");
    }

    // 상품 등록
    @PostMapping("/productEnroll")
    public String productEnrollPOST(ProductDto productDto, RedirectAttributes redirectAttributes) throws Exception {
        productService.productEnroll(productDto);
        redirectAttributes.addFlashAttribute("productEnroll_result", productDto.getProd_name() + " 상품이 등록되었습니다.");
        return "redirect:/admin/productManage";
    }

    @GetMapping("/productManage")
    public void productManageGET() {
        log.info("productManageGET");
    }

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
        if (!uploadPath.exists()) {
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

    // 첨부 파일 삭제
    @PostMapping("/deleteFile")
    public ResponseEntity<String> deleteFile(String fileName) {
        log.info("deleteFile: " + fileName);
        File file = null;
        try {
            // 썸네일 파일 삭제
            file = new File("/Users/hyungjunlim/Documents/programming/echoeats_items" + URLDecoder.decode(fileName, StandardCharsets.UTF_8));
            file.delete();
            // 원본 파일 삭제
            String originalFileName = file.getAbsolutePath().replace("s_", "");
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
        }
        return new ResponseEntity<String>("success", HttpStatus.OK);
    }

}
