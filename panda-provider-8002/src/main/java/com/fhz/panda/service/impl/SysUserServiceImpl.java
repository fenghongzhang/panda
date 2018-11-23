package com.fhz.panda.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhz.panda.dao.SysUserMapper;
import com.fhz.panda.entity.SysUser;
import com.fhz.panda.service.SysUserService;

@Service
public class SysUserServiceImpl implements SysUserService {
	
	@Autowired
	private SysUserMapper sysUserMapper;

	@Override
	public boolean addSysUser(SysUser user) {
		return false;
	}

	@Override
	public Integer getSysUserById(Integer id) {
		Integer findById = sysUserMapper.countAll(id);
		return findById;
	}

	@Override
	public List<SysUser> list() {
		return null;
	}

}
