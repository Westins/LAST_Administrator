package com.swjd.service;

import com.swjd.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapperService {
    ///查询所有的订单 字段查询
    public List<Order> selAllOrders(@Param("oNum")String oNum, @Param("startDate")String startDate);
    //对订单发货处理
    public int deliverGoods(@Param("oId")String oId);
    //对订单进行删除操作
    public int upOrderState(@Param("oId")String oId);
    //查询特定的订单 字段查询
    public Order selByIdOrders(@Param("oId")String oId);

    //查询该月里的订单数
    public int selSyDd(@Param("startTime")String startTime,@Param("endTime")String endTime);
    //查询该月里的待发货数
    public int selDfh(@Param("startTime")String startTime,@Param("endTime")String endTime);
    //查询该月里的已发货数
    public int selYfh(@Param("startTime")String startTime,@Param("endTime")String endTime);
    //查询所有的订单数
    public int selAllCountOrder();
    //查询所有的交易记录
    public int selAllMoney();

    //查询各种订单表数目
    public int selAllOrder1();
    //查询各种订单表数目
    public int selAllOrder2();
    //查询各种订单表数目
    public int selAllOrder3();
    //查询各种订单表数目
    public int selAllOrder4();
    //查询各种订单表数目
    public int selAllOrder5();

}
