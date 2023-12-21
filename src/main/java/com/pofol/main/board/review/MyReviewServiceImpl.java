package com.pofol.main.board.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MyReviewServiceImpl implements MyReviewService {
    @Autowired
    MyReviewRepositoryImpl myReviewRepository;

    @Override
    public List<MyReviewWrtDto> getMyReview(Map<String, String> reviewInfo) {

        return myReviewRepository.getMyReview(reviewInfo);
    }
    @Override
    public ProReviewDto seeMyReview(Map<String, String> reviewInfo) {
        return myReviewRepository.seeMyReview(reviewInfo);
    }
    @Override
    public int writeReview(ProReviewDto dto) {
        int wrtResult = myReviewRepository.writeReview(dto);
        int upResult= myReviewRepository.updateState(dto);
        return upResult;
    }
    @Override
    public int modifyReview(ProReviewDto dto) {
        return myReviewRepository.modifyReview(dto);
    }

}
