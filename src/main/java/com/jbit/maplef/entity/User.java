package com.jbit.maplef.entity;


public class User {

  private Integer userId;
  private Integer userCode;
  private String userPassword;
  private String userName;
  private Integer userSex;
  private Integer userAge;
  private Integer userIntegrity;
  private String userPhone;
  private Integer userType;
  private java.sql.Date createdDate;


  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }


  public Integer getUserCode() {
    return userCode;
  }

  public void setUserCode(Integer userCode) {
    this.userCode = userCode;
  }


  public String getUserPassword() {
    return userPassword;
  }

  public void setUserPassword(String userPassword) {
    this.userPassword = userPassword;
  }


  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public Integer getUserSex() {
    return userSex;
  }

  public void setUserSex(Integer userSex) {
    this.userSex = userSex;
  }


  public Integer getUserAge() {
    return userAge;
  }

  public void setUserAge(Integer userAge) {
    this.userAge = userAge;
  }


  public Integer getUserIntegrity() {
    return userIntegrity;
  }

  public void setUserIntegrity(Integer userIntegrity) {
    this.userIntegrity = userIntegrity;
  }


  public String getUserPhone() {
    return userPhone;
  }

  public void setUserPhone(String userPhone) {
    this.userPhone = userPhone;
  }


  public Integer getUserType() {
    return userType;
  }

  public void setUserType(Integer userType) {
    this.userType = userType;
  }


  public java.sql.Date getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(java.sql.Date createdDate) {
    this.createdDate = createdDate;
  }

  @Override
  public String toString() {
    return "User{" +
            "userId=" + userId +
            ", userCode=" + userCode +
            ", userPassword='" + userPassword + '\'' +
            ", userName='" + userName + '\'' +
            ", userSex=" + userSex +
            ", userAge=" + userAge +
            ", userIntegrity=" + userIntegrity +
            ", userPhone='" + userPhone + '\'' +
            ", userType=" + userType +
            ", createdDate=" + createdDate +
            '}';
  }
}
