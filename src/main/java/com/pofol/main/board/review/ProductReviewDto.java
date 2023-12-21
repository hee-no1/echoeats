package com.pofol.main.board.review;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

public class ProductReviewDto {
    // 전체 상품리뷰 조회
    private int review_id, prod_id, ord_id, like, point;
    private String mem_id, review_content, ori_filename, sys_filename;
    private Date review_date;
    private int grade;
    private String name;
    private MultipartFile uploadFile;

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

    public int getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(int ord_id) {
        this.ord_id = ord_id;
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

    public Date getReview_date() {
        return review_date;
    }

    public void setReview_date(Date review_date) {
        this.review_date = review_date;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public MultipartFile getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
    }

    @Override
    public String toString() {
        return "GoodsReviewDto{" +
                "review_id=" + review_id +
                ", prod_id=" + prod_id +
                ", ord_id=" + ord_id +
                ", like=" + like +
                ", point=" + point +
                ", mem_id='" + mem_id + '\'' +
                ", review_content='" + review_content + '\'' +
                ", ori_filename='" + ori_filename + '\'' +
                ", sys_filename='" + sys_filename + '\'' +
                ", review_date=" + review_date +
                ", grade=" + grade +
                ", name='" + name + '\'' +
                ", uploadFile=" + uploadFile +
                '}';
    }
}
