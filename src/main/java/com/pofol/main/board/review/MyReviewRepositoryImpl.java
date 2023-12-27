package com.pofol.main.board.review;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class MyReviewRepositoryImpl implements MyReviewRepository {
    @Autowired
    private SqlSession session;
    private static String namespace = "com.pofol.repository.myReviewRepository.";

    // 작성 가능한 리뷰 보기
    @Override
    public List<MyReviewWrtDto> getMyReview(Map<String, String> reviewInfo) {
        System.out.println(">>>> 작성가능한 리뷰조회 회원아이디 : " + reviewInfo.get("mem_id"));
        System.out.println(">>>> 리뷰상태 : " + reviewInfo.get("reviewStatus"));

        Map<String, Object> reviewStatus = new HashMap<>();
        reviewStatus.put("mem_id", reviewInfo.get("mem_id"));
        reviewStatus.put("reviewStatus", reviewInfo.get("reviewStatus"));
        return session.selectList(namespace + "getMyReview", reviewInfo);
    }
    // 작성한 리뷰 보기
    @Override
    public List<MyReviewWrtDto> seeMyReview(Map<String, String> reviewInfo) {
        System.out.println(">>>> 작성한 리뷰조회 회원아이디 : " + reviewInfo.get("mem_id"));
        System.out.println(">>>> 리뷰상태 : " + reviewInfo.get("reviewStatus"));
        return session.selectList(namespace + "seeMyReview", reviewInfo);
    }


    // 리뷰작성
    @Override
    public int writeReview(MyReviewWrtDto dto) {
        return session.insert(namespace + "writeReview", dto);
    }



    // 리뷰수정
    @Override
    public int modifyReview(MyReviewWrtDto dto) {
        return session.update(namespace + "modifyReview", dto);
    }

}
