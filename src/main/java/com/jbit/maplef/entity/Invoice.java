package com.jbit.maplef.entity;


public class Invoice {

  private Integer invoiceId;
  private String invoiceCode;
  private Integer bookId;
  private Integer userId;
  private Integer adminId;
  private Integer buytype;
  private java.sql.Date buydate;
  private Integer invoiceNum;
  private double invoicePrice;
  private double invoiceMoney;
  private Integer isPayment;


  public Integer getInvoiceId() {
    return invoiceId;
  }

  public void setInvoiceId(Integer invoiceId) {
    this.invoiceId = invoiceId;
  }


  public String getInvoiceCode() {
    return invoiceCode;
  }

  public void setInvoiceCode(String invoiceCode) {
    this.invoiceCode = invoiceCode;
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


  public Integer getBuytype() {
    return buytype;
  }

  public void setBuytype(Integer buytype) {
    this.buytype = buytype;
  }


  public java.sql.Date getBuydate() {
    return buydate;
  }

  public void setBuydate(java.sql.Date buydate) {
    this.buydate = buydate;
  }


  public Integer getInvoiceNum() {
    return invoiceNum;
  }

  public void setInvoiceNum(Integer invoiceNum) {
    this.invoiceNum = invoiceNum;
  }


  public double getInvoicePrice() {
    return invoicePrice;
  }

  public void setInvoicePrice(double invoicePrice) {
    this.invoicePrice = invoicePrice;
  }


  public double getInvoiceMoney() {
    return invoiceMoney;
  }

  public void setInvoiceMoney(double invoiceMoney) {
    this.invoiceMoney = invoiceMoney;
  }


  public Integer getIsPayment() {
    return isPayment;
  }

  public void setIsPayment(Integer isPayment) {
    this.isPayment = isPayment;
  }

}
