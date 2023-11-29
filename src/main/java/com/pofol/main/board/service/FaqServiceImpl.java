package com.pofol.main.board.service;

import com.pofol.main.board.dto.FaqDto;
import com.pofol.main.board.repository.FaqDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FaqServiceImpl implements FaqService {
    @Autowired
    private FaqDaoImpl faqDao;

    @Override
    public int insertFaq(FaqDto dto) {
        return faqDao.insert(dto);
    }

    @Override
    public int updateFaq(FaqDto dto) {
        return faqDao.update(dto);
    }

    @Override
    public int deleteFaq(FaqDto dto) {
        return faqDao.delete(dto);
    }

    @Override
    public FaqDto selectFaq(FaqDto dto) {
        return faqDao.select(dto);
    }

    @Override
    public List<FaqDto> selectAllFaq(FaqDto dto) {
        return faqDao.selectAll(dto);
    }

//    public List<FaqDto> getPagedDataFaq(FaqDto dto) { return faqDao.getPagedData(dto); }
//    public int getTotalFaqCountFaq(FaqDto dto) {
//        return faqDao.getTotalFaqCount(dto);
//    }
}
