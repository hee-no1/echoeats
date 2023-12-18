package com.pofol.main.board.domain;

import java.util.Date;

public class MyQnaDto {
    // 썸네일 이미지?
    private int qna_id, prod_id;
    private String mem_id, qna_title, qna_con, qna_status, qna_answer_con, prod_name, qna_secret, thumSysFilename;
    private Date qna_date;

    public int getQna_id() {
        return qna_id;
    }

    public void setQna_id(int qna_id) {
        this.qna_id = qna_id;
    }

    public int getProd_id() {
        return prod_id;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public String getMem_id() {
        return mem_id;
    }

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public String getQna_title() {
        return qna_title;
    }

    public void setQna_title(String qna_title) {
        this.qna_title = qna_title;
    }

    public String getQna_con() {
        return qna_con;
    }

    public void setQna_con(String qna_con) {
        this.qna_con = qna_con;
    }

    public String getQna_status() {
        return qna_status;
    }

    public void setQna_status(String qna_status) {
        this.qna_status = qna_status;
    }

    public String getQna_answer_con() {
        return qna_answer_con;
    }

    public void setQna_answer_con(String qna_answer_con) {
        this.qna_answer_con = qna_answer_con;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public String getQna_secret() {
        return qna_secret;
    }

    public void setQna_secret(String qna_secret) {
        this.qna_secret = qna_secret;
    }

    public String getThumSysFilename() {
        return thumSysFilename;
    }

    public void setThumSysFilename(String thumSysFilename) {
        this.thumSysFilename = thumSysFilename;
    }

    public Date getQna_date() {
        return qna_date;
    }

    public void setQna_date(Date qna_date) {
        this.qna_date = qna_date;
    }

    @Override
    public String toString() {
        return "MyQnaDto{" +
                "qna_id=" + qna_id +
                ", prod_id=" + prod_id +
                ", mem_id='" + mem_id + '\'' +
                ", qna_title='" + qna_title + '\'' +
                ", qna_con='" + qna_con + '\'' +
                ", qna_status='" + qna_status + '\'' +
                ", qna_answer_con='" + qna_answer_con + '\'' +
                ", prod_name='" + prod_name + '\'' +
                ", qna_secret='" + qna_secret + '\'' +
                ", thumSysFilename='" + thumSysFilename + '\'' +
                ", qna_date=" + qna_date +
                '}';
    }
}
