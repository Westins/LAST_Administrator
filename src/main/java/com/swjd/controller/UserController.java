package com.swjd.controller;

import com.swjd.pojo.User;
import com.swjd.service.UserInfoMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

//查询登陆的管理员信息
@RequestMapping("/")
@Controller
public class UserController {

    @Autowired
    private UserInfoMapperService userInfoService;

    @RequestMapping("/loginInfo")
    public void getStr(String lName, String lPwd, HttpServletResponse response, HttpServletRequest request,String flagCheck){
        response.setContentType("text/html; charset=utf-8");
        System.out.println(lName);
        System.out.println(lPwd);
        User user= userInfoService.selByIdUser(lName);
        System.out.println(flagCheck);

        if (null!=user) {
            if (user.getlPwd().equals(lPwd)) {
                try {

                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);

                    if (flagCheck.equals("1")){
                        String loginInfo1 = lName + "#" + lPwd;
                        String loginInfo= URLEncoder.encode(loginInfo1,"UTF-8");
                        Cookie userCookie = new Cookie("loginInfo", loginInfo);
                        userCookie.setMaxAge(1 * 24 * 60 * 60); // 存活期为一天 1*24*60*60
                        userCookie.setPath("/");
                        System.out.println(userCookie.getValue());
                        response.addCookie(userCookie);

                    }
                    response.getWriter().print(1);//登陆成功

                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            } else {
                try {
                    response.getWriter().print(2);//登陆失败
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }else{
            try {
                response.getWriter().print(3);//登陆失败
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }

    }

    //查询登陆的普通用户的信息
    @RequestMapping("/selAllUser")
    @ResponseBody
    public List<User> selAllUser(HttpServletResponse response, HttpServletRequest request, String uName, String uTime) {
        response.setContentType("text/html; charset=utf-8");
        System.out.println("uName的值"+uName);
        System.out.println("uTime的值"+uTime);
        List<User> list = userInfoService.selAllUser(uName,uTime);
        System.out.println(list.size());

        return list;

    }
      //对用户进行封禁处理 改状态为2
    @RequestMapping("/upUserStop")
    @ResponseBody
    public int upUserStop(HttpServletResponse response, HttpServletRequest request, String userId) {
        response.setContentType("text/html; charset=utf-8");

        int i = userInfoService.upUserStop(userId);
        System.out.println(i);

        return i;

    }
      //对用户进行封禁恢复处理 改状态为1
    @RequestMapping("/upUserStart")
    @ResponseBody
    public int upUserStart(HttpServletResponse response, HttpServletRequest request, String userId) {
        response.setContentType("text/html; charset=utf-8");

        int i = userInfoService.upUserStart(userId);
        System.out.println(i);

        return i;

    }

    //对商品实行单删除操作
    @RequestMapping("/upUserState")
    @ResponseBody
    public int upGoodsState(HttpServletResponse response, HttpServletRequest request, String userId) {
        response.setContentType("text/html; charset=utf-8");

        System.out.println(userId);
        int i = userInfoService.upUserState(userId);
        System.out.println(i);

        return i;

    }

    //（删除）修改商品的状态为3 多删
    @RequestMapping("/upUserMaryDel")
    public void upGoodsMaryDel(HttpServletResponse response, String userIds) {
        response.setContentType("text/html; charset=utf-8");
        int upDlCount = 0;
        String[] userId = userIds.split(",");
        for (int i = 0; i < userId.length; i++) {
            int dlDlCount = userInfoService.upUserState(userId[i]);
            upDlCount += dlDlCount;
        }

        if (upDlCount >= userId.length) {
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


    //查询所有的用户数
    @RequestMapping("/selAllUserCount")
    @ResponseBody
    public int selAllUserCount(HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html; charset=utf-8");

        int i = userInfoService.selAllUserCount();
        System.out.println(i);

        return i;

    }

}
