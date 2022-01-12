package com.busmanagement.bean;


public class CostAccraditation {

  private long appId;
  private String busCode;
  private long approver;
  private java.sql.Timestamp appTime;
  private long appState;
  private long deleteFlag;
  private long expId;
  private BusExpenditure busExpenditure;
  private User approverUser;
  private User creatorUser;

  public User getApproverUser() {
    return approverUser;
  }

  public void setApproverUser(User approverUser) {
    this.approverUser = approverUser;
  }

  public User getCreatorUser() {
    return creatorUser;
  }

  public void setCreatorUser(User creatorUser) {
    this.creatorUser = creatorUser;
  }

  public BusExpenditure getBusExpenditure() {
    return busExpenditure;
  }

  public void setBusExpenditure(BusExpenditure busExpenditure) {
    this.busExpenditure = busExpenditure;
  }

  public long getExpId() {
    return expId;
  }

  public void setExpId(long expId) {
    this.expId = expId;
  }

  public long getAppId() {
    return appId;
  }

  public void setAppId(long appId) {
    this.appId = appId;
  }


  public String getBusCode() {
    return busCode;
  }

  public void setBusCode(String busCode) {
    this.busCode = busCode;
  }


  public long getApprover() {
    return approver;
  }

  public void setApprover(long approver) {
    this.approver = approver;
  }


  public java.sql.Timestamp getAppTime() {
    return appTime;
  }

  public void setAppTime(java.sql.Timestamp appTime) {
    this.appTime = appTime;
  }


  public long getAppState() {
    return appState;
  }

  public void setAppState(long appState) {
    this.appState = appState;
  }


  public long getDeleteFlag() {
    return deleteFlag;
  }

  public void setDeleteFlag(long deleteFlag) {
    this.deleteFlag = deleteFlag;
  }

}
