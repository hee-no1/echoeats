package com.pofol.main.paging;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class PageHandlerTest {
    @Test
    public void test1() {
        PageHandler ph = new PageHandler(250, 1);
        ph.print();
        System.out.print("ph = " + ph);

        assertTrue(ph.getBeginPage() == 1);
        assertTrue(ph.getEndPage() == 10);

    }
    @Test
    public void test2() {
        PageHandler ph = new PageHandler(250, 11);
        ph.print();
        System.out.println("ph = " + ph);

        assertTrue(ph.getBeginPage() == 11);
        assertTrue(ph.getEndPage() == 20);
    }
    @Test
    public void test3() {
        PageHandler ph = new PageHandler(255, 25);
        ph.print();
        System.out.println("ph = " + ph);

        assertTrue(ph.getBeginPage() == 21);
        assertTrue(ph.getEndPage() == 26);
    }

}