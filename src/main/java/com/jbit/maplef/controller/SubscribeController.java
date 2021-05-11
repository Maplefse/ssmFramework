package com.jbit.maplef.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jbit.maplef.entity.Appointment;
import com.jbit.maplef.entity.SeatBooked;
import com.jbit.maplef.entity.SeatBorrow;
import com.jbit.maplef.service.SubscribeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller
public class SubscribeController {

    @Autowired
    private SubscribeService subscribeService;


/*    @RequestMapping("/SubscribeList")
    public ModelAndView SubscribeList(){
        ModelAndView modelAndView = new ModelAndView();
        List<Appointment> seatBooked = subscribeService.getSeatBooked(null);
        modelAndView.addObject("seatBooked",seatBooked);
        modelAndView.setViewName("message");
        System.out.println(seatBooked);
        return modelAndView;
    };*/


    //信息记录查看
    @RequestMapping("/SubscribeTest")
    public ModelAndView SubscribeTest(@RequestParam(required = false,defaultValue ="1") Integer pageNum,@RequestParam(required = false,defaultValue ="0")Integer pass){
        ModelAndView modelAndView = new ModelAndView();
        List<Appointment> seatBorrow = subscribeService.getSeatBorrow(pass);
        seatBorrow.addAll(subscribeService.getSeatBooked(pass));        //往集合中添加新集合
        Collections.sort(seatBorrow, new Comparator<Appointment>() {
            //list排序字符串必须实现Comparator接口,这里采用内部类实现
            @Override
            public int compare(Appointment o1, Appointment o2) {
                //升序,时间越早越前
                return o1.getDate().compareTo(o2.getDate());
                //判断日期大小
            }
        });
        /*
        Collections.sort(seatBorrow, new Comparator<Appointment>() {
            @Override
            public int compare(Appointment o1, Appointment o2) {
                //降序,时间越近越前
                return o2.getDate().compareTo(o1.getDate());
                //判断日期大小
            }
        });
         */
        //如果第一页点击上一页,对其数据进行更改
        if (pageNum<1){
            pageNum = 1;
        }

        //给list集合进行分页操作
        //创建Page类
        Page page = new Page(pageNum, seatBorrow.size());
        System.out.println(seatBorrow);
        //计算当前需要显示的数据下标起始值
        int startIndex = (pageNum - 1) * 10;
        int endIndex = Math.min(startIndex + 10,seatBorrow.size());
        page.addAll(seatBorrow.subList( startIndex,endIndex));
        page.setTotal(seatBorrow.size());
        //为Page类中的total属性赋值

        //以Page创建PageInfo
        PageInfo pageInfo = new PageInfo<>(page);

        modelAndView.addObject("sqltype",pass);
        modelAndView.addObject("seatBooked",pageInfo);
        System.out.println(JSON.toJSONString(pageInfo));
        modelAndView.setViewName("message");
        return modelAndView;
    };

    @RequestMapping("/hintb")
    @ResponseBody
    public synchronized String hintb(String pageMsgNum){
        System.out.println(pageMsgNum);

        int MsgNum = Integer.parseInt(pageMsgNum);
        int num = 0;

        //通过stringBuffer拼接json
        StringBuffer json = null;
        while(true){
            //获取数据
            num++;
            Integer message = subscribeService.getMessage();
            message+=subscribeService.getSeatMessage();
            System.out.println("数据量为:"+message);
            System.out.println("前台显示量为:"+MsgNum);
            //数据发生改变 将数据响应客户端
            if(message != MsgNum){
                json = new StringBuffer("{");
                json.append("\"msgNum\":"+message);
                json.append("}");
                break;
                //拼接后跳出循环直接返回
            }else{
                //没有新的数据 保持住连接
                try {
                    System.out.println("进入休眠");
                    Thread.currentThread().sleep(5000);
                    System.out.println("休眠结束");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            System.out.println(num);
            if (num>10){
                MsgNum = 0;
                break;
            }
        }
        System.out.println(json.toString());
        return json.toString();
    }


    //同意预约请求
    @RequestMapping("/consent")
    @ResponseBody
    public String consent(String booked_id , Integer table){
        Integer istrue = 0;  //sql语句执行后返回数据
        //判断申请类型
        if (table==1){
            //借阅同意
            istrue = subscribeService.updateBorrowMesYes(booked_id);
        }else if(table ==2){
            //座位同意
            istrue = subscribeService.updateBookedMesYes(booked_id);
        }
        String js = null;
        if (istrue>0){
            //判断是否有返回数据,有则转换为json格式传输到前端
            js = JSON.toJSONString(istrue);
        }
        return js;
    }


    //拒绝预约请求
    @RequestMapping("/refuse")
    @ResponseBody
    public String refuse(String booked_id , Integer table){
        Integer istrue = 0;  //sql语句执行后返回数据
        //判断申请类型
        if (table==1){
            //借阅同意
            istrue = subscribeService.updateBorrowMesNo(booked_id);
        }else if(table ==2){
            //座位同意
            istrue = subscribeService.updateBookedMesNo(booked_id);
        }
        String js = null;
        if (istrue>0){
            //判断是否有返回数据,有则转换为json格式传输到前端
            js = JSON.toJSONString(istrue);
        }
        return js;
    }

    //删除功能
    @RequestMapping("/del")
    @ResponseBody
    public String del(String booked_id , Integer table){
        Integer istrue = 0;  //sql语句执行后返回数据
        //判断申请类型
        if (table==1){
            //借阅删除
            istrue = subscribeService.deleteBorrowMes(booked_id);
        }else if(table ==2){
            //座位删除
            istrue = subscribeService.deleteBookedMes(booked_id);
        }
        String js = null;
        if (istrue>0){
            //判断是否有返回数据,有则转换为json格式传输到前端
            js = JSON.toJSONString(istrue);
        }
        return js;
    }


}
