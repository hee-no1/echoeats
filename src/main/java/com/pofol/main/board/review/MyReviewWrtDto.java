package com.pofol.main.board.review;

public class MyReviewWrtDto {
    // 작성 가능한 후기
    private int prod_id, count, review_id, like, point;
    private String mem_id, ord_id, prod_name, code_name, reviewStatus, deliveryStatus, thumOriFilename, thumSysFilename,
    review_content, ori_filename, sys_filename, review_date;

    public int getProd_id() {
        return prod_id;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getReview_id() {
        return review_id;
    }

    public void setReview_id(int review_id) {
        this.review_id = review_id;
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

    public String getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(String ord_id) {
        this.ord_id = ord_id;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public String getCode_name() {
        return code_name;
    }

    public void setCode_name(String code_name) {
        this.code_name = code_name;
    }

    public String getReviewStatus() {
        return reviewStatus;
    }

    public void setReviewStatus(String reviewStatus) {
        this.reviewStatus = reviewStatus;
    }

    public String getDeliveryStatus() {
        return deliveryStatus;
    }

    public void setDeliveryStatus(String deliveryStatus) {
        this.deliveryStatus = deliveryStatus;
    }

    public String getThumOriFilename() {
        return thumOriFilename;
    }

    public void setThumOriFilename(String thumOriFilename) {
        this.thumOriFilename = thumOriFilename;
    }

    public String getThumSysFilename() {
        return thumSysFilename;
    }

    public void setThumSysFilename(String thumSysFilename) {
        this.thumSysFilename = thumSysFilename;
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
        return "MyReviewWrtDto{" +
                "prod_id=" + prod_id +
                ", count=" + count +
                ", review_id=" + review_id +
                ", like=" + like +
                ", point=" + point +
                ", mem_id='" + mem_id + '\'' +
                ", ord_id='" + ord_id + '\'' +
                ", prod_name='" + prod_name + '\'' +
                ", code_name='" + code_name + '\'' +
                ", reviewStatus='" + reviewStatus + '\'' +
                ", deliveryStatus='" + deliveryStatus + '\'' +
                ", thumOriFilename='" + thumOriFilename + '\'' +
                ", thumSysFilename='" + thumSysFilename + '\'' +
                ", review_content='" + review_content + '\'' +
                ", ori_filename='" + ori_filename + '\'' +
                ", sys_filename='" + sys_filename + '\'' +
                ", review_date='" + review_date + '\'' +
                '}';
    }
}
