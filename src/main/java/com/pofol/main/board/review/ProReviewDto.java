package com.pofol.main.board.review;

public class ProReviewDto {
    // 상품 상세조회 리뷰
    private int review_id, prod_id, like, point;
    private Long ord_id;
    private String mem_id, review_content, ori_filename, sys_filename, review_date;

    public int getReview_id() {
        return review_id;
    }

    public void setReview_id(int review_id) {
        this.review_id = review_id;
    }

    public int getProd_id() {
        return prod_id;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public Long getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(Long ord_id) {
        this.ord_id = ord_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getReview_content() {
        return review_content;
    }

    public void setReview_content(String review_content) {
        this.review_content = review_content;
    }

    public String getOri_filename() {
        return ori_filename;
    }

    public void setOri_filename(String ori_filename) {
        this.ori_filename = ori_filename;
    }

    public String getSys_filename() {
        return sys_filename;
    }

    public void setSys_filename(String sys_filename) {
        this.sys_filename = sys_filename;
    }

    public String getReview_date() {
        return review_date;
    }

    public void setReview_date(String review_date) {
        this.review_date = review_date;
    }

    @Override
    public String toString() {
        return "ProReviewDto{" +
                "review_id=" + review_id +
                ", prod_id=" + prod_id +
                ", like=" + like +
                ", point=" + point +
                ", ord_id=" + ord_id +
                ", mem_id='" + mem_id + '\'' +
                ", review_content='" + review_content + '\'' +
                ", ori_filename='" + ori_filename + '\'' +
                ", sys_filename='" + sys_filename + '\'' +
                ", review_date='" + review_date + '\'' +
                '}';
    }
}
