package com.swjd.service.impl;

import com.swjd.dao.UserInfoMapper;
import com.swjd.pojo.User;
import com.swjd.service.UserInfoMapperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("userImpl")
public class UserInfoMapperServiceImpl implements UserInfoMapperService {

	@Autowired
	private UserInfoMapper userMapper;


	@Override
	public User selByIdUser(String lName) {
		return userMapper.selByIdUser(lName);
	}

	@Override
	public List<User> selAllUser(String userName,String startDate) {
		return userMapper.selAllUser(userName,startDate);
	}

    @Override
    public int upUserStop(String userId) {
        return userMapper.upUserStop(userId);
    }

    @Override
    public int upUserStart(String userId) {
        return userMapper.upUserStart(userId);
    }

    @Override
    public int upUserState(String userId) {
        return userMapper.upUserState(userId);
    }

    @Override
    public int selAllUserCount() {
        return userMapper.selAllUserCount();
    }
}
