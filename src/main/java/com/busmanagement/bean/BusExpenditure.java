package com.busmanagement.bean;


public class BusExpenditure {

  private long expId;
  private String busCode;
  private String invoiceCode;
  private long typeId;
  private double amount;
  private long state;
  private long approver;
  private String des;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private long creator;
  private long deleteFlag;
  private BusExpenditureType expendType;
  private User approverUser;
  private User creatorUser;
  private String deleteNote;

  public String getDeleteNote() {
    return deleteNote;
  }

  public void setDeleteNote(String deleteNote) {
    this.deleteNote = deleteNote;
  }

  public BusExpenditureType getExpendType() {
    return expendType;
  }

  public void setExpendType(BusExpenditureType expendType) {
    this.expendType = expendType;
  }

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

  public long getExpId() {
    return expId;
  }

  public void setExpId(long expId) {
    this.expId = expId;
  }


  public String getBusCode() {
    return busCode;
  }

  public void setBusCode(String busCode) {
    this.busCode = busCode;
  }


  public String getInvoiceCode() {
    return invoiceCode;
  }

  public void setInvoiceCode(String invoiceCode) {
    this.invoiceCode = invoiceCode;
  }


  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }


  public double getAmount() {
    return amount;
  }

  public void setAmount(double amount) {
    this.amount = amount;
  }


  public long getState() {
    return state;
  }

  public void setState(long state) {
    this.state = state;
  }


  public long getApprover() {
    return approver;
  }

  public void setApprover(long approver) {
    this.approver = approver;
  }


  public String getDes() {
    return des;
  }

  public void setDes(String des) {
    this.des = des;
  }


  public java.sql.Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(java.sql.Timestamp createTime) {
    this.createTime = createTime;
  }


  public java.sql.Timestamp getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(java.sql.Timestamp updateTime) {
    this.updateTime = updateTime;
  }


  public long getCreator() {
    return creator;
  }

  public void setCreator(long creator) {
    this.creator = creator;
  }


  public long getDeleteFlag() {
    return deleteFlag;
  }

  public void setDeleteFlag(long deleteFlag) {
    this.deleteFlag = deleteFlag;
  }

}
