package com.jbit.maplef.service.impl;

import com.jbit.maplef.dao.UserMapper;
import com.jbit.maplef.entity.User;
import com.jbit.maplef.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;

    @Override
    public User sel() {
        return userMapper.sel();
    }
}
