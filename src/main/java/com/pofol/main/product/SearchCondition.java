package com.pofol.main.product;

public class SearchCondition {

    private final Integer page = 1;
    private Integer pageSize;
    private final String keyword = "";
    private Integer skip;

    public static final int PAGE_SIZE = 30;

    public SearchCondition() {
    }

    public String goSearchPage() {
        return goSearchPage(page);
    }

    public String goSearchPage(Integer page) {
        return "?page=" + page + "&pageSize=" + pageSize + "&keyword=" + keyword;
    }
}
