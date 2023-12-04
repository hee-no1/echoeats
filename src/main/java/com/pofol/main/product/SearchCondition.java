package com.pofol.main.product;

import lombok.Getter;
import lombok.ToString;

import java.util.Objects;

@Getter
@ToString
public class SearchCondition {

    private Integer page = 1;
    private Integer pageSize = PAGE_SIZE;
    private String keyword = "";
    private Integer skip;

    public static final int PAGE_SIZE = 30;

    public SearchCondition() {
        this(1, PAGE_SIZE);
    }

    public SearchCondition(Integer page, Integer pageSize) {
        this.page = page;
        this.pageSize = pageSize;
    }

    public String goSelectPage() {
        return goSelectPage(page);
    }
    public String goSelectPage(Integer page) {
        if (keyword.isEmpty()) {
            return "?page=" + page;
        }
        return "?page=" + page + "&pageSize=" + pageSize + "&keyword=" + keyword;
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
        SearchCondition that = (SearchCondition) o;
        return Objects.equals(page, that.page) && Objects.equals(pageSize, that.pageSize) && Objects.equals(keyword, that.keyword) && Objects.equals(skip, that.skip);
    }

    @Override
    public int hashCode() {
        return Objects.hash(page, pageSize, keyword, skip);
    }
}
