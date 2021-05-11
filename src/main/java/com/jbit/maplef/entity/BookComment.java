package com.jbit.maplef.entity;


public class BookComment {

  private Integer commentId;
  private Integer bookId;
  private Integer userId;
  private String commentContent;
  private java.sql.Date commentDate;


  public Integer getCommentId() {
    return commentId;
  }

  public void setCommentId(Integer commentId) {
    this.commentId = commentId;
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


  public String getCommentContent() {
    return commentContent;
  }

  public void setCommentContent(String commentContent) {
    this.commentContent = commentContent;
  }


  public java.sql.Date getCommentDate() {
    return commentDate;
  }

  public void setCommentDate(java.sql.Date commentDate) {
    this.commentDate = commentDate;
  }

}
