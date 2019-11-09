package com.swjd.controller;

import com.swjd.pojo.Order;
import com.swjd.service.OrderMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class PageController {

    @Autowired
    private OrderMapperService orderMapperService;

    //负责跳转主页
    @RequestMapping("/index")
    public String  getStr(){
        return "index";
    }

    //负责跳转主页中的内容块
    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    //负责跳转登陆页
    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    //负责跳转商品列表页
    @RequestMapping("/products_List")
    public String products_List(){
        return "Products_List";
    }

    //负责跳转商品列表页
    @RequestMapping("/picture-add")
    public String pictureAdd(){
        return "picture-add";
    }

    //负责跳转用户列表页
    @RequestMapping("/user_list")
    public String user_list(){
        return "user_list";
    }

    //负责跳转用户列表页
    @RequestMapping("/orderForm")
    public String orderForm(){
        return "Orderform";
    }

    //负责跳转订单详情页
    @RequestMapping("/order_detailed")
    public String order_detailed(String oId, Model model){
        System.out.println("接收到："+oId);
        Order order = orderMapperService.selByIdOrders(oId);
        System.out.println(order.toString());
        model.addAttribute("order",order);

        return "order_detailed";
    }
}
