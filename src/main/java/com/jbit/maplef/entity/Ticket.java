package com.jbit.maplef.entity;


public class Ticket {

  private Integer ticketId;
  private Integer userId;
  private Integer bookId;
  private Integer cause;
  private String ticketExplain;
  private double penalty;
  private Integer payup;


  public Integer getTicketId() {
    return ticketId;
  }

  public void setTicketId(Integer ticketId) {
    this.ticketId = ticketId;
  }


  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }


  public Integer getBookId() {
    return bookId;
  }

  public void setBookId(Integer bookId) {
    this.bookId = bookId;
  }


  public Integer getCause() {
    return cause;
  }

  public void setCause(Integer cause) {
    this.cause = cause;
  }


  public String getTicketExplain() {
    return ticketExplain;
  }

  public void setTicketExplain(String ticketExplain) {
    this.ticketExplain = ticketExplain;
  }


  public double getPenalty() {
    return penalty;
  }

  public void setPenalty(double penalty) {
    this.penalty = penalty;
  }


  public Integer getPayup() {
    return payup;
  }

  public void setPayup(Integer payup) {
    this.payup = payup;
  }

}
