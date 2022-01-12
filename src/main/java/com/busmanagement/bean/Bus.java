package com.busmanagement.bean;


public class Bus {

  private long busId;
  private String busName;
  private String busCode;
  private String engine;
  private String chassis;
  private String instrumentNumber;
  private long principal;
  private String vendor;
  private String pakingPlace;
  private String displace;
  private String model;
  private String type;
  private String purpose;
  private java.sql.Timestamp purchaseDate;
  private String photo;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private long creator;
  private long deleteFlag;
  private User principalUser;
  private User creatorUser;

  public User getPrincipalUser() {
    return principalUser;
  }

  public void setPrincipalUser(User principalUser) {
    this.principalUser = principalUser;
  }

  public User getCreatorUser() {
    return creatorUser;
  }

  public void setCreatorUser(User creatorUser) {
    this.creatorUser = creatorUser;
  }

  public long getBusId() {
    return busId;
  }

  public void setBusId(long busId) {
    this.busId = busId;
  }


  public String getBusName() {
    return busName;
  }

  public void setBusName(String busName) {
    this.busName = busName;
  }


  public String getBusCode() {
    return busCode;
  }

  public void setBusCode(String busCode) {
    this.busCode = busCode;
  }


  public String getEngine() {
    return engine;
  }

  public void setEngine(String engine) {
    this.engine =engine;
  }


  public String getchassis() {
    return chassis;
  }

  public void setchassis(String chassis) {
    this.chassis = chassis;
  }


  public String getInstrumentNumber() {
    return instrumentNumber;
  }

  public void setInstrumentNumber(String instrumentNumber) {
    this.instrumentNumber = instrumentNumber;
  }


  public long getPrincipal() {
    return principal;
  }

  public void setPrincipal(long principal) {
    this.principal = principal;
  }


  public String getVendor() {
    return vendor;
  }

  public void setVendor(String vendor) {
    this.vendor = vendor;
  }


  public String getPakingPlace() {
    return pakingPlace;
  }

  public void setPakingPlace(String pakingPlace) {
    this.pakingPlace = pakingPlace;
  }


  public String getDisplace() {
    return displace;
  }

  public void setDisplace(String displace) {
    this.displace = displace;
  }


  public String getModel() {
    return model;
  }

  public void setModel(String model) {
    this.model = model;
  }


  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }


  public String getPurpose() {
    return purpose;
  }

  public void setPurpose(String purpose) {
    this.purpose = purpose;
  }


  public java.sql.Timestamp getPurchaseDate() {
    return purchaseDate;
  }

  public void setPurchaseDate(java.sql.Timestamp purchaseDate) {
    this.purchaseDate = purchaseDate;
  }


  public String getPhoto() {
    return photo;
  }

  public void setPhoto(String photo) {
    this.photo = photo;
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
