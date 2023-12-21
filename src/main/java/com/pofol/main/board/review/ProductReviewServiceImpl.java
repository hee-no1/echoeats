package com.pofol.main.board.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductReviewServiceImpl implements ProductReviewService {
    @Autowired
    private ProductReviewRepositoryImpl goodsReviewRepository;

    //리뷰 입력
    @Override
    public int insertReview(ProductReviewDto dto) {
        return goodsReviewRepository.insertReview(dto);
    }

    //리뷰 수정
    @Override
    public int updateReview(ProductReviewDto dto) {
        return goodsReviewRepository.updateReview(dto);
    }

    //리뷰 삭제
    @Override
    public int deleteReview(ProductReviewDto dto) {
        return goodsReviewRepository.deleteReview(dto);
    }

    @Override
    public ProductReviewDto getReviewCount(ProductReviewDto dto) {
        return goodsReviewRepository.getReviewCount(dto);
    }

    //리뷰 1개 조회
    @Override
    public ProductReviewDto getReview(ProductReviewDto dto) {
        return goodsReviewRepository.getReview(dto);
    }

    //리뷰 전체 조회
    @Override
    public List<ProductReviewDto> getReviewList(ProductReviewDto dto) {
        return goodsReviewRepository.getReviewList(dto);
    }

    //리뷰등록시 적립금
    @Override
    public int updatePoint(ProductReviewDto dto) {
        return goodsReviewRepository.updatePoint(dto);
    }

}
