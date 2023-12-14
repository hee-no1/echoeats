package com.pofol.main.board.domain;

import java.util.Date;

public class NoticeDto {
    private int notice_id;
    private String notice_title;
    private String notice_con;
    private Date notice_date;

    public int getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(int notice_id) {
        this.notice_id = notice_id;
    }

    public String getNotice_title() {
        return notice_title;
    }

    public void setNotice_title(String notice_title) {
        this.notice_title = notice_title;
    }

    public String getNotice_con() {
        return notice_con;
    }

    public void setNotice_con(String notice_con) {
        this.notice_con = notice_con;
    }

    public Date getNotice_date() {
        return notice_date;
    }

    public void setNotice_date(Date notice_date) {
        this.notice_date = notice_date;
    }

    @Override
    public String toString() {
        return "NoticeDto{" +
                "notice_id=" + notice_id +
                ", notice_title='" + notice_title + '\'' +
                ", notice_con='" + notice_con + '\'' +
                ", notice_date=" + notice_date +
                '}';
    }
}
