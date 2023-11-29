package com.pofol.main.product.domain;

import java.util.Objects;

public class EventGroupDto {

  private Long evt_gp_id; // 이벤트 그룹 id
  private String evt_gp_name; // 이벤트 그룹 명
  private String evt_gp_dtl; // 이벤트 그룹 설명
  private String evt_gp_std; // 이벤트 그룹 기준

  public EventGroupDto() {}

  public Long getEvt_gp_id() {
    return evt_gp_id;
  }

  public void setEvt_gp_id(Long evt_gp_id) {
    this.evt_gp_id = evt_gp_id;
  }

  public String getEvt_gp_name() {
    return evt_gp_name;
  }

  public void setEvt_gp_name(String evt_gp_name) {
    this.evt_gp_name = evt_gp_name;
  }

  public String getEvt_gp_dtl() {
    return evt_gp_dtl;
  }

  public void setEvt_gp_dtl(String evt_gp_dtl) {
    this.evt_gp_dtl = evt_gp_dtl;
  }

  public String getEvt_gp_std() {
    return evt_gp_std;
  }

  public void setEvt_gp_std(String evt_gp_std) {
    this.evt_gp_std = evt_gp_std;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    EventGroupDto that = (EventGroupDto) o;
    return Objects.equals(evt_gp_id, that.evt_gp_id) && Objects.equals(evt_gp_name, that.evt_gp_name) && Objects.equals(evt_gp_dtl, that.evt_gp_dtl) && Objects.equals(evt_gp_std, that.evt_gp_std);
  }

  @Override
  public int hashCode() {
    return Objects.hash(evt_gp_id, evt_gp_name, evt_gp_dtl, evt_gp_std);
  }

  @Override
  public String toString() {
    return "EventGroupDto{" +
        "evt_gp_id=" + evt_gp_id +
        ", evt_gp_name='" + evt_gp_name + '\'' +
        ", evt_gp_dtl='" + evt_gp_dtl + '\'' +
        ", evt_gp_std='" + evt_gp_std + '\'' +
        '}';
  }
}
