package com.pofol.main.product.domain;

import lombok.Getter;
import lombok.ToString;

import java.util.Objects;

@Getter
@ToString
public class SearchProductCondition {

    private Integer page = 1;
    private Integer pageSize = PAGE_SIZE;
    private String keyword = "";
    private Integer skip;

    public static final int PAGE_SIZE = 30;

    public SearchProductCondition() {
        this(1, PAGE_SIZE);
    }

    public SearchProductCondition(Integer page, Integer pageSize) {
        this.page = page;
        this.pageSize = pageSize;
    }

    public String goSelectPage() {
        return goSelectPage(page);
    }
    public String goSelectPage(Integer page) {
        if (keyword.isEmpty()) {
            return "?page=" + page + "&pageSize=" + pageSize;
        }
        return "?keyword=" + keyword + "&page=" + page + "&pageSize=" + pageSize;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public Integer getSkip() {
        if (page == 0) {
            page = 1;
        }
        return (page - 1) * pageSize;
    }

    public void setSkip(Integer skip) {
        this.skip = skip;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SearchProductCondition that = (SearchProductCondition) o;
        return Objects.equals(page, that.page) && Objects.equals(pageSize, that.pageSize) && Objects.equals(keyword, that.keyword) && Objects.equals(skip, that.skip);
    }

    @Override
    public int hashCode() {
        return Objects.hash(page, pageSize, keyword, skip);
    }
}
