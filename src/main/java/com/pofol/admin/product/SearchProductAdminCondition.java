package com.pofol.admin.product;

import lombok.Getter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.util.UriComponentsBuilder;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
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
    private Integer offset;

    public static final int MIN_PAGE_SIZE = 5;
    public static final int DEFAULT_PAGE_SIZE = 10;
    public static final int MAX_PAGE_SIZE = 50;

    // 검색 url 쿼리스트링 (페이징시 검색 유지)
    private String bigCategory;
    private String midCategory;
    private String selling;
    private String display;
    private String Stock;
    private String stock_min;
    private String stock_max;
    private String priceKind;
    private String price_min;
    private String price_max;
    private String option;
    private String searchSorting;
    private String rows;

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

    public String getProductQueryString() {
        return getProductQueryString(page);
    }

    // 상품 관리 검색에 사용할 것

    public String getProductQueryString(Integer page) {

        if (start_date != null && end_date != null) {
            LocalDateTime startLocalDateTime = start_date.toInstant() // Date -> Instant
                .atZone(ZoneId.systemDefault()) // Instant -> ZonedDateTime
                .toLocalDateTime(); // ZonedDateTime -> LocalDateTime
            LocalDateTime endLocalDateTime = end_date.toInstant() // Date -> Instant
                .atZone(ZoneId.systemDefault()) // Instant -> ZonedDateTime
                .toLocalDateTime(); // ZonedDateTime -> LocalDateTime

            String startDate = startLocalDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            String endDate = endLocalDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

            return UriComponentsBuilder.newInstance()
                .queryParam("keyword_type", keyword_type)
                .queryParam("keyword", keyword)
                .queryParam("bigCategory", bigCategory)
                .queryParam("midCategory", midCategory)
                .queryParam("date_type", date_type)
                .queryParam("start_date", startDate)
                .queryParam("end_date", endDate)
                .queryParam("selling", selling)
                .queryParam("display", display)
                .queryParam("Stock", Stock)
                .queryParam("stock_min", stock_min)
                .queryParam("stock_max", stock_max)
                .queryParam("priceKind", priceKind)
                .queryParam("price_min", price_min)
                .queryParam("price_max", price_max)
                .queryParam("option", option)
                .queryParam("searchSorting", searchSorting)
                .queryParam("rows", rows)
                .queryParam("page", page)
                .build().toString();
        }

        return UriComponentsBuilder.newInstance()
            .queryParam("keyword_type", keyword_type)
            .queryParam("keyword", keyword)
            .queryParam("bigCategory", bigCategory)
            .queryParam("midCategory", midCategory)
            .queryParam("date_type", date_type)
            .queryParam("start_date", start_date)
            .queryParam("end_date", end_date)
            .queryParam("selling", selling)
            .queryParam("display", display)
            .queryParam("Stock", Stock)
            .queryParam("stock_min", stock_min)
            .queryParam("stock_max", stock_max)
            .queryParam("priceKind", priceKind)
            .queryParam("price_min", price_min)
            .queryParam("price_max", price_max)
            .queryParam("option", option)
            .queryParam("searchSorting", searchSorting)
            .queryParam("rows", rows)
            .queryParam("page", page)
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

    public void setBigCategory(String bigCategory) {
        this.bigCategory = bigCategory;
    }

    public void setMidCategory(String midCategory) {
        this.midCategory = midCategory;
    }

    public void setSelling(String selling) {
        this.selling = selling;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public void setStock(String stock) {
        Stock = stock;
    }

    public void setStock_min(String stock_min) {
        this.stock_min = stock_min;
    }

    public void setStock_max(String stock_max) {
        this.stock_max = stock_max;
    }

    public void setPriceKind(String priceKind) {
        this.priceKind = priceKind;
    }

    public void setPrice_min(String price_min) {
        this.price_min = price_min;
    }

    public void setPrice_max(String price_max) {
        this.price_max = price_max;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public void setSearchSorting(String searchSorting) {
        this.searchSorting = searchSorting;
    }

    public void setRows(String rows) {
        this.rows = rows;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "SearchCondition [page=" + page + ", pageSize=" + pageSize + ", date_type=" + date_type + ", start_date="
            + start_date + ", end_date=" + end_date + ", keyword_type=" + keyword_type + ", keyword=" + keyword
            + "]";
    }
}
