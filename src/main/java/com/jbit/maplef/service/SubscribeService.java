package com.jbit.maplef.service;

import com.jbit.maplef.entity.Appointment;
import com.jbit.maplef.entity.SeatBooked;
import com.jbit.maplef.entity.SeatBorrow;

import java.util.List;

public interface SubscribeService {

    //获取座位预约信息
    public List<Appointment> getSeatBooked(Integer pass);

    //获取书籍预约信息
    public List<Appointment> getSeatBorrow(Integer pass);

    //获取未阅读信息
    public Integer getMessage();
    public Integer getSeatMessage();

    //改变数据为已审核通过
    public Integer updateBorrowMesYes(String booked_id);
    public Integer updateBookedMesYes(String booked_id);

    //改变数据为审核不通过
    public Integer updateBorrowMesNo(String booked_id);
    public Integer updateBookedMesNo(String booked_id);

    //删除数据
    public Integer deleteBorrowMes(String booked_id);
    public Integer deleteBookedMes(String booked_id);

}
