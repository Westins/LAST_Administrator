package com.swjd.service;

import com.swjd.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserInfoMapperService {

	// 查询所有的会员
	public User selByIdUser(@Param("lName")String lName);
	//查询登陆的普通用户的信息
	public List<User> selAllUser(@Param("userName")String userName,@Param("startDate")String startDate);
    //对用户进行封禁处理 改状态为2
    public int upUserStop(@Param("userId")String userId);
    //对用户进行封禁恢复处理 改状态为1
    public int upUserStart(@Param("userId")String userId);
    //对用户实行删除操作 改状态为3 代表删除
    public int upUserState(@Param("userId")String userId);
    //查询所有的用户数
    public int selAllUserCount();
}
