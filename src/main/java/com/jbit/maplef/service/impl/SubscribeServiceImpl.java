package com.jbit.maplef.service.impl;

import com.jbit.maplef.dao.SubscribeMapper;
import com.jbit.maplef.entity.Appointment;
import com.jbit.maplef.service.SubscribeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("subscribeService")
public class SubscribeServiceImpl implements SubscribeService {

    @Autowired
    private SubscribeMapper subscribeMapper;

    @Override
    public List<Appointment> getSeatBooked(Integer pass) {
        return subscribeMapper.getSeatBooked(pass);
    }

    @Override
    public List<Appointment> getSeatBorrow(Integer pass) {
        return subscribeMapper.getSeatBorrow(pass);
    }

    @Override
    public Integer getMessage() {
        return subscribeMapper.getMessage();
    }

    @Override
    public Integer getSeatMessage() {
        return subscribeMapper.getSeatMessage();
    }

    @Override
    public Integer updateBorrowMesYes(String booked_id) {
        return subscribeMapper.updateBorrowMesYes(booked_id);
    }

    @Override
    public Integer updateBookedMesYes(String booked_id) {
        return subscribeMapper.updateBookedMesYes(booked_id);
    }

    @Override
    public Integer updateBorrowMesNo(String booked_id) {
        return subscribeMapper.updateBorrowMesNo(booked_id);
    }

    @Override
    public Integer updateBookedMesNo(String booked_id) {
        return subscribeMapper.updateBookedMesNo(booked_id);
    }

    @Override
    public Integer deleteBorrowMes(String booked_id) {
        return subscribeMapper.deleteBorrowMes(booked_id);
    }

    @Override
    public Integer deleteBookedMes(String booked_id) {
        return subscribeMapper.deleteBookedMes(booked_id);
    }
}
