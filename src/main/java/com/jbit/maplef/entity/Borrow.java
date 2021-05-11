package com.jbit.maplef.entity;


public class Borrow {

  private Integer borrowId;
  private String borrowCode;
  private Integer bookId;
  private Integer userId;
  private Integer adminId;
  private java.sql.Date borrowDate;
  private Integer isReturn;
  private Integer renew;
  private java.sql.Date returnDate;
  private Integer returnAdmin;


  public Integer getBorrowId() {
    return borrowId;
  }

  public void setBorrowId(Integer borrowId) {
    this.borrowId = borrowId;
  }


  public String getBorrowCode() {
    return borrowCode;
  }

  public void setBorrowCode(String borrowCode) {
    this.borrowCode = borrowCode;
  }


  public Integer getBookId() {
    return bookId;
  }

  public void setBookId(Integer bookId) {
    this.bookId = bookId;
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


  public java.sql.Date getBorrowDate() {
    return borrowDate;
  }

  public void setBorrowDate(java.sql.Date borrowDate) {
    this.borrowDate = borrowDate;
  }


  public Integer getIsReturn() {
    return isReturn;
  }

  public void setIsReturn(Integer isReturn) {
    this.isReturn = isReturn;
  }


  public Integer getRenew() {
    return renew;
  }

  public void setRenew(Integer renew) {
    this.renew = renew;
  }


  public java.sql.Date getReturnDate() {
    return returnDate;
  }

  public void setReturnDate(java.sql.Date returnDate) {
    this.returnDate = returnDate;
  }


  public Integer getReturnAdmin() {
    return returnAdmin;
  }

  public void setReturnAdmin(Integer returnAdmin) {
    this.returnAdmin = returnAdmin;
  }

}
