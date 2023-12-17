package com.pofol.main.board.domain;

import java.util.Date;

public class ProQnaDto {
    private int qna_id, prod_id;
    private String mem_id, qna_title, qna_con, qna_status, qna_answer, qna_secret;
    private Date qna_date;
    private String prod_name;

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

    public String getQna_answer() {
        return qna_answer;
    }

    public void setQna_answer(String qna_answer) {
        this.qna_answer = qna_answer;
    }

    public String getQna_secret() {
        return qna_secret;
    }

    public void setQna_secret(String qna_secret) {
        this.qna_secret = qna_secret;
    }

    public Date getQna_date() {
        return qna_date;
    }

    public void setQna_date(Date qna_date) {
        this.qna_date = qna_date;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    @Override
    public String toString() {
        return "ProQnaDto{" +
                "qna_id=" + qna_id +
                ", prod_id=" + prod_id +
                ", mem_id='" + mem_id + '\'' +
                ", qna_title='" + qna_title + '\'' +
                ", qna_con='" + qna_con + '\'' +
                ", qna_status='" + qna_status + '\'' +
                ", qna_answer='" + qna_answer + '\'' +
                ", qna_secret='" + qna_secret + '\'' +
                ", qna_date=" + qna_date +
                ", prod_name='" + prod_name + '\'' +
                '}';
    }
}
