package com.jbit.maplef.controller;


import com.jbit.maplef.entity.User;
import com.jbit.maplef.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

/*    @RequestMapping("/Test")
    public ModelAndView Test(){

        System.out.println("进入方法");
        User sel = userService.sel();
        System.out.println(sel);

        return null;
    }*/
}
