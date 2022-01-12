package com.busmanagement.bean;


import java.util.List;

public class Role {

  private long roleId;
  private String roleName;
  private String roleNote;
  private List<Menu> menus;

  public List<Menu> getMenus() {
    return menus;
  }

  public void setMenus(List<Menu> menus) {
    this.menus = menus;
  }

  public long getRoleId() {
    return roleId;
  }

  public void setRoleId(long roleId) {
    this.roleId = roleId;
  }


  public String getRoleName() {
    return roleName;
  }

  public void setRoleName(String roleName) {
    this.roleName = roleName;
  }


  public String getRoleNote() {
    return roleNote;
  }

  public void setRoleNote(String roleNote) {
    this.roleNote = roleNote;
  }

  @Override
  public String toString() {
    return "Role{" +
            "roleId=" + roleId +
            ", roleName='" + roleName + '\'' +
            ", roleNote='" + roleNote + '\'' +
            ", menus=" + menus +
            '}';
  }
}
