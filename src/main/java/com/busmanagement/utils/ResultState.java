package com.busmanagement.utils;

/*
 *响应码类
 */
public class ResultState {
    public static int SERVER_ERROR = 0; //系统错误
    public static int SUCCESS = 1; //操作成功
    public static int FIELD_REPEATED = -1; //[添加,修改]: 某字段值要求唯一,重复了
    public static int LOGIN_INCORRENT = -2; //[登录]: 密码或用户名错误
    public static int VERIFYCODE_INCORRENT = -3; //[登录]: 验证码错误
    public static int USER_USERNAME_REPEATED = -4; //[user:修改,添加]: userName字段重复
    public static int CREATOR_NOT_EXIST = -5; //创建人不存在
    public static int PRINCIPAL_NOT_EXIST = -6; //bus表负责人不存在
    public static int EXPENDTYPE_TYPENAME_REPEATED = -7; //expendType表的typeName已经存在
    public static int ROLE_ROLENAME_REPEATED = -8; //role表的roleName已经存在
    public static int RECEPIENT_NOT_EXIST = -9; //busregisterinfo表的领用人用户不存在
    public static int EXPENDTYPE_NOT_EXIST = -10; //支出花费类型不存在
    public static int APPROVER_NOT_EXIST = -10; //审核人用户名对应用户不存在
    public static int UPLOAD_EMPTY = -11;//上传文件为空
    public static int ROLE_ONT_EXIST = -12;//角色不存在
    public static int NOT_LOGIN = -13;//未登录
    public static int NO_ACCESS = -14;//没有权限访问
}
