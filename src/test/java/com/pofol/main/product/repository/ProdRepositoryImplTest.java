package com.pofol.main.product.repository;

import com.pofol.main.product.domain.ProdDto;
import lombok.extern.log4j.Log4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
@Log4j
class ProdRepositoryImplTest {

    @Autowired
    private ProdRepository prodRepository;

    @Test
    void selectTest() throws Exception {
        ProdDto prodDto = new ProdDto(1, "[압구정주꾸미]주꾸미 볶음 2종(택1)", "마늘의 감칠맛이 듬뿍", 8900, "컬리", "냉동(종이포장)", "1팩", "옵션별 상이", "걸려 그냥", "수령일 포함 180일이상 남은 제품을 보내드립니다.(총 유통기한 365일)", "없음", "https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3df368c8-e124-4d06-a9e9-af4c10d01b53.jpeg");
        assertThat(prodRepository.select(1)).isEqualTo(prodDto);
    }

}