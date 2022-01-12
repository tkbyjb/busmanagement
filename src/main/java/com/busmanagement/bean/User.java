package com.busmanagement.bean;


public class User {

  private long userId;
  private long roleId;
  private String userName;
  private String userPassword;
  private String realName;
  private String sex;
  private String idCard;
  private java.sql.Date birth;
  private long age;
  private String tel;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private long creator;
  private long deleteFlag;
  private Role role;
  private User creatorUser;

  public User getCreatorUser() {
    return creatorUser;
  }

  public void setCreatorUser(User creatorUser) {
    this.creatorUser = creatorUser;
  }

  public Role getRole() {
    return role;
  }

  public void setRole(Role role) {
    this.role = role;
  }

  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getRoleId() {
    return roleId;
  }

  public void setRoleId(long roleId) {
    this.roleId = roleId;
  }


  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public String getUserPassword() {
    return userPassword;
  }

  public void setUserPassword(String userPassword) {
    this.userPassword = userPassword;
  }


  public String getRealName() {
    return realName;
  }

  public void setRealName(String realName) {
    this.realName = realName;
  }


  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }


  public String getIdCard() {
    return idCard;
  }

  public void setIdCard(String idCard) {
    this.idCard = idCard;
  }


  public java.sql.Date getBirth() {
    return birth;
  }

  public void setBirth(java.sql.Date birth) {
    this.birth = birth;
  }


  public long getAge() {
    return age;
  }

  public void setAge(long age) {
    this.age = age;
  }


  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
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

  @Override
  public String toString() {
    return "User{" +
            "userId=" + userId +
            ", roleId=" + roleId +
            ", userName='" + userName + '\'' +
            ", userPassword='" + userPassword + '\'' +
            ", realName='" + realName + '\'' +
            ", sex='" + sex + '\'' +
            ", idCard='" + idCard + '\'' +
            ", birth=" + birth +
            ", age=" + age +
            ", tel='" + tel + '\'' +
            ", createTime=" + createTime +
            ", updateTime=" + updateTime +
            ", creator=" + creator +
            ", deleteFlag=" + deleteFlag +
            ", role=" + role +
            '}';
  }
}
