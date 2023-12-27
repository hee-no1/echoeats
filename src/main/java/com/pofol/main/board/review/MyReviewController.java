package com.pofol.main.board.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;


@Controller
@RequestMapping("/mypage1")
public class MyReviewController {
    @Autowired
    MyReviewService myReviewService;

    // 리뷰페이지 로드
    @RequestMapping("/review")
    public String review(Model m) {
        MyReviewWrtDto myReview = new MyReviewWrtDto();
        m.addAttribute("myReview", myReview);
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String loginMember = authentication.getName();
        m.addAttribute("loginMember", loginMember);
        return "/review/review";
    }

    // 리뷰작성
    @RequestMapping( "/writeProReview")
    public String writeProReview(HttpServletRequest request, @RequestParam MultipartFile ori_filename, Model m) throws IllegalStateException, IOException {
        System.out.println(request);
        MyReviewWrtDto dto = new MyReviewWrtDto();

        try {
            Long ordId = Long.parseLong((request.getParameter("ord_id")));
            int prodId = Integer.parseInt(request.getParameter("prod_id"));

            dto.setOrd_id(String.valueOf(ordId));
            dto.setProd_id(prodId);
        } catch (Exception e) {
            e.printStackTrace(); // 예외를 로깅합니다.
        }

        dto.setMem_id(request.getParameter("mem_id"));
        dto.setProd_name(request.getParameter("prod_name"));
        dto.setReview_content(request.getParameter("review_content"));
        dto.setReviewStatus("Y");

        System.out.println(dto.toString());

        if(ori_filename == null) {
            System.out.println("파일업로드 안함");
            dto.setPoint(50);  // 적립금 50원만
        } else if (!ori_filename.isEmpty()){
            System.out.println("파일업로드 했음");
            String oriFile =  ori_filename.getOriginalFilename();

            //확장자 추출
            String extension = null;
            int index = oriFile.lastIndexOf(".");
            if (index > 0) {
                extension = "."+oriFile.substring(index + 1);
                System.out.println(extension);  // txt
            }

            String sysFile = UUID.randomUUID().toString() + extension;
            System.out.println(":: 원본 파일명 : " + oriFile);
            System.out.println(":: 저장 파일명 : " + sysFile);
            dto.setOri_filename(oriFile);
            dto.setSys_filename(sysFile);
            dto.setPoint(200);
            ori_filename.transferTo(new File("C:/echoeats/src/main/webapp/resources/images"+sysFile)); //저장경로 설정

            // 썸네일 이미지 생성 및 저장
            BufferedImage thumbnail = createThumbnail(ori_filename.getInputStream(),100, 100);
            File thumbnailFile = new File("C:/echoeats/src/main/webapp/resources/images/" + sysFile);
            ImageIO.write(thumbnail, "png", thumbnailFile); // 썸네일 저장

        }

        int rvResult = myReviewService.writeReview(dto);
        m.addAttribute("rvResult", rvResult);
        return "redirect:/mypage1/review";
    }
    //리뷰 수정
    @RequestMapping("/modifyProReview")
    public String modifyProReview(ServletRequest request, Model m)  {
        MyReviewWrtDto dto = new MyReviewWrtDto();

        dto.setReview_id(Integer.parseInt(request.getParameter("review_id")));
        dto.setProd_id(Integer.parseInt(request.getParameter("prod_id")));
        dto.setOrd_id(request.getParameter("ord_id"));
        dto.setMem_id(request.getParameter("mem_id"));
        dto.setReview_content(request.getParameter("review_content"));
        System.out.println("리뷰 수정내용 : " + dto);

        int rvResult = myReviewService.modifyReview(dto);
        m.addAttribute("rvResult", rvResult);
        return "redirect:/review/review";
    }


    // 작성가능한 리뷰 조회
    @ResponseBody
    @RequestMapping(value = "/getMemberReview", method = RequestMethod.POST)
    public List<MyReviewWrtDto> getMemberReview (@RequestBody Map<String, String> reviewInfo) {
        System.out.println("getMemberReviewAjax() 실행");
        System.out.println(">>>> 리뷰가져오기 회원아이디 : " + reviewInfo.get("mem_id"));
        System.out.println(">>>> controller리뷰구분 : " + reviewInfo.get("reviewStatus"));

        System.out.println("리뷰 작성가능 목록: ");
        return  myReviewService.getMyReview(reviewInfo);

    }

    // 작성한 리뷰 조회
    @ResponseBody
	@RequestMapping(value = "/seeMyReview", method = RequestMethod.POST)
	public List<MyReviewWrtDto> seeMyReview (@RequestBody Map<String, String> reviewInfo) {
        System.out.println("seeMyReviewAjax() 실행");
        System.out.println(">>>> 리뷰가져오기 회원아이디 : " + reviewInfo.get("mem_id"));
        System.out.println(">>>> controller리뷰구분 : " + reviewInfo.get("reviewStatus"));


        System.out.println("작성한 리뷰 목록");
        return myReviewService.seeMyReview(reviewInfo);
	}

    // 썸네일 생성 메소드
    private BufferedImage createThumbnail(InputStream input, int width, int height) throws IOException {
        BufferedImage img = ImageIO.read(input);
        Image scaledImage = img.getScaledInstance(width, height, Image.SCALE_SMOOTH);
        BufferedImage thumbnail = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
        thumbnail.getGraphics().drawImage(scaledImage, 0, 0, null);
        return thumbnail;
    }
}
