package com.wyait.manage.pojo;


public class Recording {

  private long id;
  private String nameOfMoldTooling;
  private String serialNum;
  private java.sql.Date libraryTime;
  private String loaneName;
  private String depName;
  private String depLine;
  private java.sql.Date storageTime;
  private String returnName;
  private String maintainName;
  private String maintainContent;
  private java.sql.Date maintainTime;
  private double maintainCost;



  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getNameOfMoldTooling() {
    return nameOfMoldTooling;
  }

  public void setNameOfMoldTooling(String nameOfMoldTooling) {
    this.nameOfMoldTooling = nameOfMoldTooling;
  }


  public String getSerialNum() {
    return serialNum;
  }

  public void setSerialNum(String serialNum) {
    this.serialNum = serialNum;
  }


  public java.sql.Date getLibraryTime() {
    return libraryTime;
  }

  public void setLibraryTime(java.sql.Date libraryTime) {
    this.libraryTime = libraryTime;
  }


  public String getLoaneName() {
    return loaneName;
  }

  public void setLoaneName(String loaneName) {
    this.loaneName = loaneName;
  }


  public String getDepName() {
    return depName;
  }

  public void setDepName(String depName) {
    this.depName = depName;
  }


  public String getDepLine() {
    return depLine;
  }

  public void setDepLine(String depLine) {
    this.depLine = depLine;
  }


  public java.sql.Date getStorageTime() {
    return storageTime;
  }

  public void setStorageTime(java.sql.Date storageTime) {
    this.storageTime = storageTime;
  }


  public String getReturnName() {
    return returnName;
  }

  public void setReturnName(String returnName) {
    this.returnName = returnName;
  }


  public String getMaintainName() {
    return maintainName;
  }

  public void setMaintainName(String maintainName) {
    this.maintainName = maintainName;
  }


  public String getMaintainContent() {
    return maintainContent;
  }

  public void setMaintainContent(String maintainContent) {
    this.maintainContent = maintainContent;
  }


  public java.sql.Date getMaintainTime() {
    return maintainTime;
  }

  public void setMaintainTime(java.sql.Date maintainTime) {
    this.maintainTime = maintainTime;
  }



  public double getMaintainCost() {
    return maintainCost;
  }

  public void setMaintainCost(double maintainCost) {
    this.maintainCost = maintainCost;
  }




}
