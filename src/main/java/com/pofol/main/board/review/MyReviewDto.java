package com.pofol.main.board.review;

public class MyReviewDto {
    // 작성한 후기
    private int ord_id, prod_id, count;
    private String mem_id, review_status, thumSysFilename;

    public int getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(int ord_id) {
        this.ord_id = ord_id;
    }

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

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getReview_status() {
        return review_status;
    }

    public void setReview_status(String review_status) {
        this.review_status = review_status;
    }

    public String getThumSysFilename() {
        return thumSysFilename;
    }

    public void setThumSysFilename(String thumSysFilename) {
        this.thumSysFilename = thumSysFilename;
    }

    @Override
    public String toString() {
        return "MyReviewDto{" +
                "ord_id=" + ord_id +
                ", prod_id=" + prod_id +
                ", count=" + count +
                ", mem_id='" + mem_id + '\'' +
                ", review_status='" + review_status + '\'' +
                ", thumSysFilename='" + thumSysFilename + '\'' +
                '}';
    }
}
