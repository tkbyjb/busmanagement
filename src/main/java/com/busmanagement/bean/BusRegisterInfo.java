package com.busmanagement.bean;


public class BusRegisterInfo {

  private long regId;
  private String busCode;
  private long recepient;
  private String startPlace;
  private String endPlace;
  private String startOdometer;
  private String endOdometer;
  private java.sql.Timestamp useTime;
  private String useReason;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private long creator;
  private long deleteFlag;
  private User recepientUser;
  private User creatorUser;
  private String deleteNote;

  public String getDeleteNote() {
    return deleteNote;
  }

  public void setDeleteNote(String deleteNote) {
    this.deleteNote = deleteNote;
  }

  public User getRecepientUser() {
    return recepientUser;
  }

  public void setRecepientUser(User recepientUser) {
    this.recepientUser = recepientUser;
  }

  public User getCreatorUser() {
    return creatorUser;
  }

  public void setCreatorUser(User creatorUser) {
    this.creatorUser = creatorUser;
  }

  public long getRegId() {
    return regId;
  }

  public void setRegId(long regId) {
    this.regId = regId;
  }


  public String getBusCode() {
    return busCode;
  }

  public void setBusCode(String busCode) {
    this.busCode = busCode;
  }


  public long getRecepient() {
    return recepient;
  }

  public void setRecepient(long recepient) {
    this.recepient = recepient;
  }


  public String getStartPlace() {
    return startPlace;
  }

  public void setStartPlace(String startPlace) {
    this.startPlace = startPlace;
  }


  public String getEndPlace() {
    return endPlace;
  }

  public void setEndPlace(String endPlace) {
    this.endPlace = endPlace;
  }


  public String getStartOdometer() {
    return startOdometer;
  }

  public void setStartOdometer(String startOdometer) {
    this.startOdometer = startOdometer;
  }


  public String getEndOdometer() {
    return endOdometer;
  }

  public void setEndOdometer(String endOdometer) {
    this.endOdometer = endOdometer;
  }


  public java.sql.Timestamp getUseTime() {
    return useTime;
  }

  public void setUseTime(java.sql.Timestamp useTime) {
    this.useTime = useTime;
  }


  public String getUseReason() {
    return useReason;
  }

  public void setUseReason(String useReason) {
    this.useReason = useReason;
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
