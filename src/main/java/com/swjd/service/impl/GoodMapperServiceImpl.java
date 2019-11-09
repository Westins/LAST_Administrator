package com.swjd.service.impl;

import com.swjd.dao.GoodMapper;
import com.swjd.pojo.Good;
import com.swjd.service.GoodMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("goodImpl")
public class GoodMapperServiceImpl implements GoodMapperService {

	@Autowired
	private GoodMapper goodMapper;


	@Override
	public List<Good> selAllGoods(String gName,String startDate) {
		return goodMapper.selAllGoods(gName,startDate);
	}

    @Override
    public int upGoodsStop(String goodsId) {
        return goodMapper.upGoodsStop(goodsId);
    }

    @Override
    public int upGoodsStart(String goodsId) {
        return goodMapper.upGoodsStart(goodsId);
    }

    @Override
    public int selCount() {
        return goodMapper.selCount();
    }

    @Override
    public int upGoodsState(String goodsId) {
        return goodMapper.upGoodsState(goodsId);
    }

    @Override
    public Good selGoodsById(String goodsId) {
        return goodMapper.selGoodsById(goodsId);
    }

    @Override
    public int addGoods(String gImg, String gName, String gPrice, String gRebate, String gType, String gDetailsTest,String gTime) {
        return goodMapper.addGoods(gImg,gName,gPrice,gRebate,gType,gDetailsTest,gTime);
    }

    @Override
    public int upByIdGoods(String gImg, String gName, String gPrice, String gRebate, String gState, String goodsId, String gTime) {
        return goodMapper.upByIdGoods(gImg,gName,gPrice,gRebate,gState,goodsId,gTime);
    }

    @Override
    public int selAllGoodsCount() {
        return goodMapper.selAllGoodsCount();
    }
}
