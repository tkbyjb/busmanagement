package com.busmanagement.bean;


import java.util.List;

public class Menu {

  private long menuId;
  private String menuName;
  private String icon;
  private long parent;
  private String url;
  private String target;
  private List<Menu> menuChilds;

  public List<Menu> getMenuChilds() {
    return menuChilds;
  }

  public void setMenuChilds(List<Menu> menuChilds) {
    this.menuChilds = menuChilds;
  }

  public long getMenuId() {
    return menuId;
  }

  public void setMenuId(long menuId) {
    this.menuId = menuId;
  }


  public String getMenuName() {
    return menuName;
  }

  public void setMenuName(String menuName) {
    this.menuName = menuName;
  }


  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }


  public long getParent() {
    return parent;
  }

  public void setParent(long parent) {
    this.parent = parent;
  }


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public String getTarget() {
    return target;
  }

  public void setTarget(String target) {
    this.target = target;
  }

}
