package com.pofol.main.board.review;

import java.util.List;

public interface ProductReviewService {
    //리뷰 입력
    int insertReview(ProductReviewDto dto);

    //리뷰 수정
    int updateReview(ProductReviewDto dto);

    //리뷰 삭제
    int deleteReview(ProductReviewDto dto);

    ProductReviewDto getReviewCount(ProductReviewDto dto);

    //리뷰 1개 조회
    ProductReviewDto getReview(ProductReviewDto dto);

    //리뷰 전체 조회
    List<ProductReviewDto> getReviewList(ProductReviewDto dto);

    //리뷰등록시 적립금
    int updatePoint(ProductReviewDto dto);
}
