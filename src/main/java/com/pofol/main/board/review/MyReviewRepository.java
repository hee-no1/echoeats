package com.pofol.main.board.review;

import java.util.List;
import java.util.Map;

public interface MyReviewRepository {
    // 작성 가능한 리뷰 보기
    List<MyReviewWrtDto> getMyReview(Map<String, String> reviewInfo) throws Exception;

    // 작성한 리뷰 보기
    List<MyReviewWrtDto> seeMyReview(Map<String, String> reviewInfo) throws Exception;

    // 리뷰작성
    int writeReview(MyReviewWrtDto dto) throws Exception;

//    // 리뷰상태변경
//    int updateState(ProReviewDto dto) throws Exception;

    // 리뷰수정
    int modifyReview(MyReviewWrtDto dto) throws Exception;
}
