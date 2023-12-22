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
    public List<MyReviewWrtDto> seeMyReview(Map<String, String> reviewInfo) {
        return myReviewRepository.seeMyReview(reviewInfo);
    }
    @Override
    public int writeReview(MyReviewWrtDto dto) {
//        int wrtResult = myReviewRepository.writeReview(dto);
//        int upResult= myReviewRepository.updateState(dto);
        return myReviewRepository.writeReview(dto);
    }
    @Override
    public int modifyReview(MyReviewWrtDto dto) {
        return myReviewRepository.modifyReview(dto);
    }

}
