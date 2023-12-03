package com.pofol.main.product;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageHandler {

    private SearchCondition sc;

    public final int NAV_SIZE = 30; // 페이지 네비게이션의 크기
    private final int totalCount; // 총 게시물 개수
    private int totalPage; // 전체 페이지 개수
    private int beginPage; // 네비게이션의 첫번째 페이지
    private int endPage; // 네비게이션의 마지막 페이지
    private boolean next = false; // 이전 페이지로 이동하는 버튼을 보여줄 것인지 여부
    private boolean prev = false; // 다음 페이지로 이동하는 버튼을 보여줄 것인지 여부

    public PageHandler() {
        this(1, new SearchCondition());
    }

    public PageHandler(int totalCount, SearchCondition sc) {
        this.totalCount = totalCount;
        this.sc = sc;

        doPaging(totalCount, sc);
    }

    private void doPaging(int totalCount, SearchCondition sc) {
        totalPage = totalCount / sc.getPageSize() + (totalCount % sc.getPageSize() == 0 ? 0 : 1);

        this.sc.setPage(Math.min(sc.getPage(), totalPage));
        this.beginPage = (this.sc.getPage() - 1) / NAV_SIZE * NAV_SIZE + 1;
        this.endPage = Math.min(beginPage + NAV_SIZE - 1, totalPage);
        this.prev = sc.getPage() != 1;
        this.next = sc.getPage() != totalPage;
    }

    public void setSc(SearchCondition sc) {
        this.sc = sc;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public void setBeginPage(int beginPage) {
        this.beginPage = beginPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public void setNext(boolean next) {
        this.next = next;
    }

    public void setPrev(boolean prev) {
        this.prev = prev;
    }
}
