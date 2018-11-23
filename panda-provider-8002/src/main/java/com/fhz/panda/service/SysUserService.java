package com.fhz.panda.service;

import java.util.List;


import com.fhz.panda.entity.SysUser;


public interface SysUserService {

	boolean addSysUser(SysUser user);
	
	Integer getSysUserById(Integer id);
	
	List<SysUser> list();
}
