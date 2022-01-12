package com.busmanagement.bean;


public class BusExpenditureType {

  private long typeId;
  private String typeName;
  private String typeNote;
  private long deleteFlag;


  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }


  public String getTypeName() {
    return typeName;
  }

  public void setTypeName(String typeName) {
    this.typeName = typeName;
  }


  public String getTypeNote() {
    return typeNote;
  }

  public void setTypeNote(String typeNote) {
    this.typeNote = typeNote;
  }


  public long getDeleteFlag() {
    return deleteFlag;
  }

  public void setDeleteFlag(long deleteFlag) {
    this.deleteFlag = deleteFlag;
  }

}
