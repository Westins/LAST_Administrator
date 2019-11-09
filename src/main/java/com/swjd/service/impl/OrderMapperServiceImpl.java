package com.swjd.service.impl;

import com.swjd.dao.OrderMapper;
import com.swjd.pojo.Order;
import com.swjd.service.OrderMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("orderImpl")
public class OrderMapperServiceImpl implements OrderMapperService {

	@Autowired
	private OrderMapper orderMapper;


    @Override
    public List<Order> selAllOrders(String oNum, String startDate) {
        return orderMapper.selAllOrders(oNum,startDate);
    }

    @Override
    public int deliverGoods(String oId) {
        return orderMapper.deliverGoods(oId);
    }

    @Override
    public int upOrderState(String oId) {
        return orderMapper.upOrderState(oId);
    }

    @Override
    public Order selByIdOrders(String oId) {
        return orderMapper.selByIdOrders(oId);
    }

    @Override
    public int selSyDd(String startTime, String endTime) {
        return orderMapper.selSyDd(startTime,endTime);
    }

    @Override
    public int selDfh(String startTime, String endTime) {
        return orderMapper.selDfh(startTime,endTime);
    }

    @Override
    public int selYfh(String startTime, String endTime) {
        return orderMapper.selYfh(startTime,endTime);
    }

    @Override
    public int selAllCountOrder() {
        return orderMapper.selAllCountOrder();
    }

    @Override
    public int selAllMoney() {
        return orderMapper.selAllMoney();
    }

    @Override
    public int selAllOrder1() {
        return orderMapper.selAllOrder1();
    }

    @Override
    public int selAllOrder2() {
        return orderMapper.selAllOrder2();
    }

    @Override
    public int selAllOrder3() {
        return orderMapper.selAllOrder3();
    }

    @Override
    public int selAllOrder4() {
        return orderMapper.selAllOrder4();
    }

    @Override
    public int selAllOrder5() {
        return orderMapper.selAllOrder5();
    }
}
