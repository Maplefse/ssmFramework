package com.jbit.maplef.entity;


public class Administrator {

  private Integer adminId;
  private Integer adminCode;
  private String adminPassowrd;
  private String phone;
  private Integer adminAge;
  private java.sql.Date createdDate;
  private Integer gender;
  private Integer adminType;


  public Integer getAdminId() {
    return adminId;
  }

  public void setAdminId(Integer adminId) {
    this.adminId = adminId;
  }


  public Integer getAdminCode() {
    return adminCode;
  }

  public void setAdminCode(Integer adminCode) {
    this.adminCode = adminCode;
  }


  public String getAdminPassowrd() {
    return adminPassowrd;
  }

  public void setAdminPassowrd(String adminPassowrd) {
    this.adminPassowrd = adminPassowrd;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public Integer getAdminAge() {
    return adminAge;
  }

  public void setAdminAge(Integer adminAge) {
    this.adminAge = adminAge;
  }


  public java.sql.Date getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(java.sql.Date createdDate) {
    this.createdDate = createdDate;
  }


  public Integer getGender() {
    return gender;
  }

  public void setGender(Integer gender) {
    this.gender = gender;
  }


  public Integer getAdminType() {
    return adminType;
  }

  public void setAdminType(Integer adminType) {
    this.adminType = adminType;
  }

}
