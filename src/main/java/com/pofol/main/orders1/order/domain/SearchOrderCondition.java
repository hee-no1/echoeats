package com.pofol.main.orders1.order.domain;

import java.util.Date;
import java.util.Objects;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.util.UriComponentsBuilder;

public class SearchOrderCondition {
    private Integer page = 1;
    private Integer pageSize = DEFAULT_PAGE_SIZE;
    private String  date_type = "";
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date  start_date;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date  end_date;
    private String  keyword_type = "";
    private String  keyword = "";
    
    public static final int MIN_PAGE_SIZE = 5;
    public static final int DEFAULT_PAGE_SIZE = 10;
    public static final int MAX_PAGE_SIZE = 50;

    public SearchOrderCondition(){}

    public SearchOrderCondition(Integer page, Integer pageSize) {
        this(page, pageSize, "");
    }

    public SearchOrderCondition(Integer page, Integer pageSize, String keyword) {
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
                .queryParam("page",     page)
                .queryParam("pageSize", pageSize)
                .queryParam("date_type", date_type)
                .queryParam("start_date", start_date)
                .queryParam("end_date", end_date)
                .queryParam("keyword_type", keyword_type)
                .queryParam("keyword",  keyword)
                .build().toString();
    }
    
    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = Objects.requireNonNullElse(pageSize, DEFAULT_PAGE_SIZE);
        // MIN_PAGE_SIZE <= pageSize <= MAX_PAGE_SIZE
        this.pageSize = Math.max(MIN_PAGE_SIZE, Math.min(this.pageSize, MAX_PAGE_SIZE));
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
    
    public String getDate_type() {
		return date_type;
	}

	public void setDate_type(String date_type) {
		this.date_type = date_type;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getKeyword_type() {
		return keyword_type;
	}

	public void setKeyword_type(String keyword_type) {
		this.keyword_type = keyword_type;
	}

	public Integer getOffset() {
        return (page-1)*pageSize;
    }

	@Override
	public String toString() {
		return "SearchCondition [page=" + page + ", pageSize=" + pageSize + ", date_type=" + date_type + ", start_date="
				+ start_date + ", end_date=" + end_date + ", keyword_type=" + keyword_type + ", keyword=" + keyword
				+ "]";
	}
}
