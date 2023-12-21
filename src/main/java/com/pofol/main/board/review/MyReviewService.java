package com.pofol.main.board.review;

import java.util.List;
import java.util.Map;

public interface MyReviewService {
    List<MyReviewWrtDto> getMyReview(Map<String, String> reviewInfo);
    ProReviewDto seeMyReview(Map<String, String> reviewInfo);

    int writeReview(ProReviewDto dto);

    int modifyReview(ProReviewDto dto);
}
