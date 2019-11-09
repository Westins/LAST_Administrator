package com.swjd.controller;

import com.swjd.pojo.Count;
import com.swjd.pojo.Order;
import com.swjd.service.OrderMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/")
@Controller
public class OrderController {

    @Autowired
    private OrderMapperService orderMapperService;

    //查询所有的商品
    @RequestMapping("/selAllOrder")
    @ResponseBody
    public List<Order> selAllOrder(HttpServletResponse response, HttpServletRequest request, String oNum, String oTime) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println("订单号："+oNum);
        List<Order> list = orderMapperService.selAllOrders(oNum,oTime);
        System.out.println(list.size());

        return list;

    }

    //对订单发货
    @RequestMapping("/deliverGoods")
    @ResponseBody
    public int deliverGoods(HttpServletResponse response, HttpServletRequest request, String oId) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println("订单id："+oId);
        int i = orderMapperService.deliverGoods(oId);
        System.out.println(i);

        return i;

    }

 //对订单进行删除操作
    @RequestMapping("/upOrderState")
    @ResponseBody
    public int upOrderState(HttpServletResponse response, HttpServletRequest request, String oId) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println("订单id："+oId);
        int i = orderMapperService.upOrderState(oId);
        System.out.println(i);

        return i;

    }

    //（删除）修改商品的状态为3 多删
    @RequestMapping("/upOrderMaryDel")
    public void upOrderMaryDel(HttpServletResponse response, String OrderIds) {
        response.setContentType("text/html; charset=utf-8");
        int upDlCount = 0;
        String[] orderId = OrderIds.split(",");
        for (int i = 0; i < orderId.length; i++) {
            int dlDlCount = orderMapperService.upOrderState(orderId[i]);
            upDlCount += dlDlCount;
        }

        if (upDlCount >= orderId.length) {
            try {
                response.getWriter().print("1");// 删除成功
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else if (upDlCount > 0) {
            try {
                response.getWriter().print("3");// 部分删除失败
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        } else if (upDlCount <= 0) {
            try {
                response.getWriter().print("2");// 删除失败
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

    }


    //查询一年的订单数
    @RequestMapping("/selZx")
    @ResponseBody
    public Count selZx(HttpServletResponse response) {

        response.setContentType("text/html; charset=utf-8");
        System.out.println("进入折现图实现control");

        List<Integer>list = new ArrayList();
        List<Integer>list2 = new ArrayList();
        List<Integer>list3 = new ArrayList();
        String[] time = {"2019-01-01","2019-02-01","2019-03-01","2019-04-01","2019-05-01","2019-06-01","2019-07-01","2019-08-01","2019-09-01","2019-010-01","2019-11-01","2019-12-01","2020-01-01"};
        for (int i = 0; i < time.length-1; i++) {
            int orderscount = orderMapperService.selSyDd(time[i],time[i+1]);
            list.add(orderscount);
        }
        for (int i = 0; i < time.length-1; i++) {
            int orderscount = orderMapperService.selDfh(time[i],time[i+1]);
            list2.add(orderscount);
        }
        for (int i = 0; i < time.length-1; i++) {
            int orderscount = orderMapperService.selYfh(time[i],time[i+1]);
            list3.add(orderscount);
        }


        Count count = new Count();
        count.setListSyDd(list);
        count.setListDfh(list2);
        count.setListYfh(list3);


        return count;
    }

    //查询所有的订单数
    @RequestMapping("/selAllCountOrder")
    @ResponseBody
    public int selAllCountOrder(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllCountOrder();
        System.out.println(i);

        return i;

    }

    //查询所有的成交金额
    @RequestMapping("/selAllMoney")
    @ResponseBody
    public int selAllMoney(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllMoney();
        System.out.println(i);

        return i;

    }

 //查询各种订单表数目
    @RequestMapping("/selAllOrder1")
    @ResponseBody
    public int selAllOrder1(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllOrder1();
        System.out.println(i);

        return i;

    }
//查询各种订单表数目
    @RequestMapping("/selAllOrder2")
    @ResponseBody
    public int selAllOrder2(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllOrder2();
        System.out.println(i);

        return i;

    }
//查询各种订单表数目
    @RequestMapping("/selAllOrder3")
    @ResponseBody
    public int selAllOrder3(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllOrder3();
        System.out.println(i);

        return i;

    }
//查询各种订单表数目
    @RequestMapping("/selAllOrder4")
    @ResponseBody
    public int selAllOrder4(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllOrder4();
        System.out.println(i);

        return i;

    }

//查询各种订单表数目
    @RequestMapping("/selAllOrder5")
    @ResponseBody
    public int selAllOrder5(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = orderMapperService.selAllOrder5();
        System.out.println(i);

        return i;

    }

}
