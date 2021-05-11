package com.jbit.maplef.entity;


public class Stock {

  private Integer stockId;
  private Integer stockCode;
  private Integer bookId;
  private Integer adminId;
  private Integer stockNum;
  private java.sql.Date stockDate;
  private double stockPrice;
  private double stockMoney;
  private Integer isPayment;


  public Integer getStockId() {
    return stockId;
  }

  public void setStockId(Integer stockId) {
    this.stockId = stockId;
  }


  public Integer getStockCode() {
    return stockCode;
  }

  public void setStockCode(Integer stockCode) {
    this.stockCode = stockCode;
  }


  public Integer getBookId() {
    return bookId;
  }

  public void setBookId(Integer bookId) {
    this.bookId = bookId;
  }


  public Integer getAdminId() {
    return adminId;
  }

  public void setAdminId(Integer adminId) {
    this.adminId = adminId;
  }


  public Integer getStockNum() {
    return stockNum;
  }

  public void setStockNum(Integer stockNum) {
    this.stockNum = stockNum;
  }


  public java.sql.Date getStockDate() {
    return stockDate;
  }

  public void setStockDate(java.sql.Date stockDate) {
    this.stockDate = stockDate;
  }


  public double getStockPrice() {
    return stockPrice;
  }

  public void setStockPrice(double stockPrice) {
    this.stockPrice = stockPrice;
  }


  public double getStockMoney() {
    return stockMoney;
  }

  public void setStockMoney(double stockMoney) {
    this.stockMoney = stockMoney;
  }


  public Integer getIsPayment() {
    return isPayment;
  }

  public void setIsPayment(Integer isPayment) {
    this.isPayment = isPayment;
  }

}
