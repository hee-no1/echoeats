package com.pofol.main.board.review;

import java.util.List;

public interface ProductReviewRepository {
    //상품 후기 1개 조회
    ProductReviewDto getReview(ProductReviewDto dto);

    //상품 후기 전체 보기
    List<ProductReviewDto> getReviewList(ProductReviewDto dto);

    //상품 후기 입력
    int insertReview(ProductReviewDto dto);

    //상품 후기 수정
    int updateReview(ProductReviewDto dto);

    // 적립금 업데이트
    int updatePoint(ProductReviewDto dto);

    //상품 후기 삭제
    int deleteReview(ProductReviewDto dto);

    // 리뷰 카운트
    ProductReviewDto getReviewCount(ProductReviewDto dto);
}
