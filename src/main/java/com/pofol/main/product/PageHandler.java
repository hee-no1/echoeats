package com.pofol.main.product;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageHandler {

  private final SearchCondition sc;

  public final int NAV_SIZE = 30;
  private final int totalCnt;
  private int totalPage;
  private int beginPage;
  private int endPage;
  private boolean next = false;
  private boolean prev = false;

  public PageHandler() {
    this(1, new SearchCondition());
  }

  public PageHandler(int totalCnt, SearchCondition sc) {
    this.totalCnt = totalCnt;
    this.sc = sc;

    doPaging(totalCnt, sc);
  }

  private void doPaging(int totalCnt, SearchCondition sc) {
    totalPage = totalCnt / sc.getPageSize() + (totalCnt % sc.getPageSize() == 0 ? 0 : 1);

    this.sc.setPage(Math.min(sc.getPage(), totalPage)); // 다시 확인해야 함

    if (totalPage == 0) {
      totalPage = 1;
    }

    this.beginPage = (this.sc.getPage() - 1) / NAV_SIZE * NAV_SIZE + 1;
    this.endPage = Math.min(beginPage + NAV_SIZE - 1, totalPage);
    this.prev = beginPage != 1;
    this.next = endPage != totalPage;
  }
}
