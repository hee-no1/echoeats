package com.pofol.main.orders.delivery.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import static java.lang.Math.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageHandler {
    private SearchDeliveryCondition sc;
    private final int NAV_SIZE = 10; // page navigation size
    private int totalCnt; // 게시물의 총 갯수
    private int totalPage; // 전체 페이지의 갯수
    private int beginPage; // 화면에 보여줄 첫 페이지
    private int endPage; // 화면에 보여줄 마지막 페이지
    private boolean showNext = false; // 이후를 보여줄지의 여부. endPage==totalPage이면, showNext는 false
    private boolean showPrev = false;// 이전을 보여줄지의 여부. beginPage==1이 아니면 showPrev는 false

    public PageHandler(int totalCnt, Integer page) {
        this(totalCnt, new SearchDeliveryCondition(page, 10));
    }

    public PageHandler(int totalCnt, Integer page, Integer pageSize) {
        this(totalCnt, new SearchDeliveryCondition(page, pageSize));
    }

    public PageHandler(int totalCnt, SearchDeliveryCondition sc) {
        this.totalCnt = totalCnt;
        this.sc = sc;

        doPaging(totalCnt, sc);
    }

    private void doPaging(int totalCnt, SearchDeliveryCondition sc) {
        this.totalPage = totalCnt / sc.getPageSize() + (totalCnt % sc.getPageSize() == 0 ? 0 : 1);
        this.sc.setPage(min(sc.getPage(), totalPage)); // page가 totalPage보다 크지 않게
        this.beginPage = (this.sc.getPage()-1) / NAV_SIZE * NAV_SIZE + 1;
        this.endPage = min(beginPage + (NAV_SIZE - 1), totalPage);
        this.showPrev = beginPage != 1;
        this.showNext = endPage != totalPage;
    }

    void print(){
        System.out.println("page=" + sc.getPage());
        System.out.print(showPrev ? "PREV" : "");

        for(int i = beginPage ; i<= endPage; i++){
            System.out.print(i + "");
        }
        System.out.println(showNext? " NEXT" : "");
    }
}
