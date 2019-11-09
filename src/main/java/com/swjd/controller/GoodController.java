package com.swjd.controller;

import com.swjd.pojo.Good;
import com.swjd.service.GoodMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RequestMapping("/")
@Controller
public class GoodController {

    @Autowired
    private GoodMapperService goodMapperService;

    //查询所有的商品
    @RequestMapping("/selAllGood")
    @ResponseBody
    public List<Good> selAllGood(HttpServletResponse response, HttpServletRequest request, String goodsName, String gTime) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println(goodsName);
        List<Good> list = goodMapperService.selAllGoods(goodsName, gTime);
        System.out.println(list.size());

        //获取存在cookie的图片名
//        Cookie[] cookie = request.getCookies();
//        for (Cookie cookie1:cookie){
//            if (cookie1.getName().equals("urlName")){
//                System.out.println(cookie1.getValue());
//            }
//        }
        return list;

    }

    //对商品进行下架封禁处理 改状态为1
    @RequestMapping("/upGoodsStop")
    @ResponseBody
    public int upGoodsStop(HttpServletResponse response, HttpServletRequest request, String goodsIds) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println(goodsIds);
        int i = goodMapperService.upGoodsStop(goodsIds);
        System.out.println(i);

        return i;

    }

    //对商品进行下架封禁恢复处理
    @RequestMapping("/upGoodsStart")
    @ResponseBody
    public int upGoodsStart(HttpServletResponse response, HttpServletRequest request, String goodsId) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println(goodsId);
        int i = goodMapperService.upGoodsStart(goodsId);
        System.out.println(i);

        return i;

    }

    //统计本网站的所有有效商品的总数
    @RequestMapping("/selCount")
    @ResponseBody
    public int selCount(HttpServletResponse response, HttpServletRequest request, String goodsIds) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println(goodsIds);
        int i = goodMapperService.selCount();
        System.out.println(i);

        return i;

    }

    //对商品实行单删除操作
    @RequestMapping("/upGoodsState")
    @ResponseBody
    public int upGoodsState(HttpServletResponse response, HttpServletRequest request, String goodsId) {
        response.setContentType("text/html; charset=utf-8");

        System.out.println(goodsId);
        int i = goodMapperService.upGoodsState(goodsId);
        System.out.println(i);

        return i;

    }

    //（删除）修改商品的状态为3 多删
    @RequestMapping("/upGoodsMaryDel")
    public void upGoodsMaryDel(HttpServletResponse response, String goodsIds) {
        response.setContentType("text/html; charset=utf-8");
        int upDlCount = 0;
        String[] goodsId = goodsIds.split(",");
        for (int i = 0; i < goodsId.length; i++) {
            int dlDlCount = goodMapperService.upGoodsState(goodsId[i]);
            upDlCount += dlDlCount;
        }

        if (upDlCount >= goodsId.length) {
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


    //查询特定的商品信息
    @RequestMapping("/selGoodsById")
    @ResponseBody
    public Good selGoodsById(HttpServletResponse response, HttpServletRequest request, String goodsId) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println(goodsId);
        Good goods = goodMapperService.selGoodsById(goodsId);

        System.out.println(goods.toString());

        return goods;

    }


    //为goods表添加商品
    @RequestMapping("/addGoods")
    @ResponseBody
    public int addGoods(HttpServletResponse response, HttpServletRequest request, String gName, String gPrice, String gRebate, String gType, String gDetailsTest,String gTime) {
        response.setContentType("text/html; charset=utf-8");

        String gImg="http://localhost:8080/bom/img/";
        HttpSession session = request.getSession();
        String fileName = (String) session.getAttribute("fileName");
        System.out.println("session中的值"+fileName);
        gImg+=fileName;
        System.out.println(gImg);
        int i = goodMapperService.addGoods(gImg,gName,gPrice,gRebate,gType,gDetailsTest,gTime);
        System.out.println(i);

        return i;

    }

    //修改特定的商品信息
    @RequestMapping("/upByIdGoods")
    @ResponseBody
    public int upByIdGoods(HttpServletResponse response, HttpServletRequest request, String gName, String gPrice, String gRebate, String gState, String goodsId,String gTime) {
        response.setContentType("text/html; charset=utf-8");

        String gImg="http://localhost:8080/bom/img/";
        HttpSession session = request.getSession();
        String fileName = (String) session.getAttribute("fileName");
        System.out.println("session中的值"+fileName);
        gImg+=fileName;
        System.out.println(gImg);
        int i = goodMapperService.upByIdGoods(gImg,gName,gPrice,gRebate,gState,goodsId,gTime);
        System.out.println(i);

        return i;

    }

    //查询所有的商品数
    @RequestMapping("/selAllGoodsCount")
    @ResponseBody
    public int selAllGoods(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = goodMapperService.selAllGoodsCount();
        System.out.println(i);

        return i;

    }

}
