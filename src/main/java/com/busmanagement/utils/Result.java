package com.busmanagement.utils;

/*
 *响应结果类
 */
public class Result {
    private int state; //响应状态码
    private Object data;//响应数据对象

    public Result() {
    }

    public Result(int state, Object data) {
        this.state = state;
        this.data = data;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public int getState() {
        return state;
    }

    public Object getData() {
        return data;
    }
}
