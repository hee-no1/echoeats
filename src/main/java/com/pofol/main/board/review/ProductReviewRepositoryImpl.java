package com.pofol.main.board.review;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductReviewRepositoryImpl implements ProductReviewRepository {
    @Autowired
    private SqlSession session;

    private static String namespace = "com.pofol.repository.productReviewRepository.";


    //상품 후기 1개 조회
    @Override
    public ProductReviewDto getReview(ProductReviewDto dto) {
        return session.selectOne(namespace + "getReview", dto);
    }

    //상품 후기 전체 보기
    @Override
    public List<ProductReviewDto> getReviewList(ProductReviewDto dto) {
        return session.selectList(namespace +"getReviewList", dto);
    }

    //상품 후기 추천순 보기


    //상품 후기 최근등록순 보기

    //상품 후기 입력
    @Override
    public int insertReview(ProductReviewDto dto) {
        return session.insert(namespace + "insertReview", dto);
    }

    //상품 후기 수정
    @Override
    public int updateReview(ProductReviewDto dto) {
        return session.update(namespace + "updateReview", dto);
    }

    // 적립금 업데이트
    @Override
    public int updatePoint(ProductReviewDto dto) {
        return session.update(namespace + "updatePoint", dto);
    }

    //상품 후기 삭제
    @Override
    public int deleteReview(ProductReviewDto dto) {
        return session.delete(namespace + "deleteReview", dto);
    }

    // 리뷰 카운트
    @Override
    public ProductReviewDto getReviewCount(ProductReviewDto dto) {
        return session.selectOne(namespace + "getReviewCount", dto);
    }

}
