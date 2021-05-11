package com.jbit.maplef.entity;


public class SeatBooked {

  private Integer bookedId;
  private Integer userId;
  private Integer adminId;
  private Integer seatId;
  private java.sql.Date bookedDate;
  private java.sql.Date bookedTime;
  private Integer bookedPass;


  public Integer getBookedId() {
    return bookedId;
  }

  public void setBookedId(Integer bookedId) {
    this.bookedId = bookedId;
  }


  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }


  public Integer getAdminId() {
    return adminId;
  }

  public void setAdminId(Integer adminId) {
    this.adminId = adminId;
  }


  public Integer getSeatId() {
    return seatId;
  }

  public void setSeatId(Integer seatId) {
    this.seatId = seatId;
  }


  public java.sql.Date getBookedDate() {
    return bookedDate;
  }

  public void setBookedDate(java.sql.Date bookedDate) {
    this.bookedDate = bookedDate;
  }


  public java.sql.Date getBookedTime() {
    return bookedTime;
  }

  public void setBookedTime(java.sql.Date bookedTime) {
    this.bookedTime = bookedTime;
  }


  public Integer getBookedPass() {
    return bookedPass;
  }


  @Override
  public String toString() {
    return "SeatBooked{" +
            "bookedId=" + bookedId +
            ", userId=" + userId +
            ", adminId=" + adminId +
            ", seatId=" + seatId +
            ", bookedDate=" + bookedDate +
            ", bookedTime=" + bookedTime +
            ", bookedPass=" + bookedPass +
            '}';
  }
}
