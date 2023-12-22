package com.pofol.main.board.review;

import java.util.List;
import java.util.Map;

public interface MyReviewService {
    List<MyReviewWrtDto> getMyReview(Map<String, String> reviewInfo);
    List<MyReviewWrtDto> seeMyReview(Map<String, String> reviewInfo);

    int writeReview(MyReviewWrtDto dto);

    int modifyReview(MyReviewWrtDto dto);
}
