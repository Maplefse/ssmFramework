package com.jbit.maplef.entity;


public class SeatBorrow {

  private Integer bookedId;
  private Integer userId;
  private Integer adminId;
  private Integer bookId;
  private java.sql.Date borrowDate;
  private java.sql.Date borrowTime;
  private Integer borrowPass;


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


  public Integer getBookId() {
    return bookId;
  }

  public void setBookId(Integer bookId) {
    this.bookId = bookId;
  }


  public java.sql.Date getBorrowDate() {
    return borrowDate;
  }

  public void setBorrowDate(java.sql.Date borrowDate) {
    this.borrowDate = borrowDate;
  }


  public java.sql.Date getBorrowTime() {
    return borrowTime;
  }

  public void setBorrowTime(java.sql.Date borrowTime) {
    this.borrowTime = borrowTime;
  }


  public Integer getBorrowPass() {
    return borrowPass;
  }

  public void setBorrowPass(Integer borrowPass) {
    this.borrowPass = borrowPass;
  }

}
