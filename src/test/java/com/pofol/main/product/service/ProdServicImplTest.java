package com.pofol.main.product.service;

import lombok.extern.log4j.Log4j;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
@Log4j
class ProdServicImplTest {

    private final ProdService prodService;

    @Autowired
    public ProdServicImplTest(ProdService prodService) {
        this.prodService = prodService;
    }

    @DisplayName("상품 목록 조회 테스트")
    @Test
    void getListTest() throws Exception {
        assertThat(prodService.getList().size()).isEqualTo(1);
    }

}