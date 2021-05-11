package com.jbit.maplef.entity;

import java.sql.Date;
import java.sql.Timestamp;

/**
 * 预约信息整合表
 */
public class Appointment {
    private Integer id;     //主键id
    private Integer user_id; //用户id
    private String user_name; //用户姓名
    private Integer admin_id; //管理员id
    private Integer type_id;    //类型id
    private String typeName;    //预约内容名称
    private Timestamp date;      //预约时间
    private Timestamp time;      //预约时长
    private Integer pass;   //是否通过
    private Integer integrity;  //用户信誉值
    private int table;      //哪个表的区分
    //1:借阅预约
    //2:座位预约
    //3:借阅续期

    private int read;       //用户是否阅读

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(Integer admin_id) {
        this.admin_id = admin_id;
    }

    public Integer getType_id() {
        return type_id;
    }

    public void setType_id(Integer type_id) {
        this.type_id = type_id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }


    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public Integer getPass() {
        return pass;
    }

    public void setPass(Integer pass) {
        this.pass = pass;
    }

    public int getTable() {
        return table;
    }

    public void setTable(int table) {
        this.table = table;
    }

    public int getRead() {
        return read;
    }

    public void setRead(int read) {
        this.read = read;
    }

    public Integer getIntegrity() {
        return integrity;
    }

    public void setIntegrity(Integer integrity) {
        this.integrity = integrity;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", admin_id=" + admin_id +
                ", type_id=" + type_id +
                ", typeName='" + typeName + '\'' +
                ", date=" + date +
                ", time=" + time +
                ", pass=" + pass +
                ", integrity=" + integrity +
                ", table=" + table +
                ", read=" + read +
                '}';
    }
}
