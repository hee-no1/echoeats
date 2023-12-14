package com.pofol.admin.product;

import com.pofol.main.product.dateThread.SafeDateFormat;
import lombok.Getter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.util.UriComponentsBuilder;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;

@Getter
public class SearchProductAdminCondition {
    private Integer page = 1;
    private Integer pageSize = DEFAULT_PAGE_SIZE;
    private String date_type = "";
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date start_date;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date end_date;
    private String keyword_type = "";
    private String keyword = "";

    public static final int MIN_PAGE_SIZE = 5;
    public static final int DEFAULT_PAGE_SIZE = 10;
    public static final int MAX_PAGE_SIZE = 50;

    public SearchProductAdminCondition() {
    }

    public SearchProductAdminCondition(Integer page, Integer pageSize) {
        this(page, pageSize, "");
    }

    public SearchProductAdminCondition(Integer page, Integer pageSize, String keyword) {
        this.page = page;
        this.pageSize = pageSize;
        this.keyword = keyword;
    }

    public String getQueryString() {
        return getQueryString(page);
    }

    public String getQueryString(Integer page) {
        // ?page=10&pageSize=10&option=A&keyword=title

        return UriComponentsBuilder.newInstance()
            .queryParam("page", page)
            .queryParam("pageSize", pageSize)
            .queryParam("date_type", date_type)
            .queryParam("start_date", start_date)
            .queryParam("end_date", end_date)
            .queryParam("keyword_type", keyword_type)
            .queryParam("keyword", keyword)
            .build().toString();
    }

    public String getQueryStringWithoutPS() {

//        String aaa = SafeDateFormat.format(start_date);
//        System.out.println("aaa = " + aaa);
        return UriComponentsBuilder.newInstance()
            .queryParam("page", page)
            .queryParam("date_type", date_type)
            .queryParam("start_date", start_date)
//            .queryParam("start_date", aaa)
            .queryParam("end_date", end_date)
            .queryParam("keyword_type", keyword_type)
            .queryParam("keyword", keyword)
            .build().toString();
    }

    // 상품 관리 검색에 사용할 것
    public String getProductQueryString(Integer page) {

        String aaa = SafeDateFormat.format(start_date);

        return UriComponentsBuilder.newInstance()
            .queryParam("page", page)
            .queryParam("date_type", date_type)
//            .queryParam("start_date", start_date)
            .queryParam("start_date", aaa)
            .queryParam("end_date", end_date)
            .queryParam("keyword_type", keyword_type)
            .queryParam("keyword", keyword)
            .build().toString();
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = Objects.requireNonNullElse(pageSize, DEFAULT_PAGE_SIZE);
        // MIN_PAGE_SIZE <= pageSize <= MAX_PAGE_SIZE
        this.pageSize = Math.max(MIN_PAGE_SIZE, Math.min(this.pageSize, MAX_PAGE_SIZE));
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setDate_type(String date_type) {
        this.date_type = date_type;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public void setKeyword_type(String keyword_type) {
        this.keyword_type = keyword_type;
    }

    public Integer getOffset() {
        return page == 0 ? 0 : (page - 1) * pageSize;
    }

    @Override
    public String toString() {
        return "SearchCondition [page=" + page + ", pageSize=" + pageSize + ", date_type=" + date_type + ", start_date="
            + start_date + ", end_date=" + end_date + ", keyword_type=" + keyword_type + ", keyword=" + keyword
            + "]";
    }
}
