package com.swjd.dao;

import com.swjd.pojo.Good;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("goodMapper")
public interface GoodMapper {

    //查询所有的商品
    public List<Good>selAllGoods(@Param("gName")String gName,@Param("startDate")String startDate);
    //对商品进行下架封禁处理 改状态为1
    public int upGoodsStop(@Param("goodsId")String goodsId);
    //对商品进行下架封禁恢复处理
    public int upGoodsStart(@Param("goodsId")String goodsId);
    //统计本网站的所有有效商品的总数
    public int selCount();
    //对商品实行删除操作（单多删）
    public int upGoodsState(@Param("goodsId")String goodsId);
    //查询特定的商品信息
    public Good selGoodsById(@Param("goodsId")String goodsId);
    //为goods表添加商品
    public int addGoods(@Param("gImg")String gImg,@Param("gName")String gName,
                        @Param("gPrice")String gPrice,@Param("gRebate")String gRebate,
                        @Param("gType")String gType,@Param("gDetailsTest")String gDetailsTest,@Param("gTime")String gTime);
    //修改特定的商品信息
    public int upByIdGoods(@Param("gImg")String gImg,@Param("gName")String gName,
                           @Param("gPrice")String gPrice,@Param("gRebate")String gRebate,
                           @Param("gState")String gState,@Param("goodsId")String goodsId,@Param("gTime")String gTime);

    //查询所有的商品数
    public int selAllGoodsCount();

}
