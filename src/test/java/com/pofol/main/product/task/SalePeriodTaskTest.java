package com.pofol.main.product.task;

import com.pofol.admin.product.ProductAdminService;
import com.pofol.main.product.domain.ProductDto;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.Date;
import java.util.List;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
class SalePeriodTaskTest {

    @Autowired
    ProductAdminService productAdminService;

    @Test
    void salePeriodCheck() {

        Date currentDate = new Date();

        try {
            List<ProductDto> start = productAdminService.getSalePeriod("start", currentDate);
//            System.out.println(start);

            System.out.println("currentDate = " + currentDate);
            System.out.println("start.size() = " + start.size());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}