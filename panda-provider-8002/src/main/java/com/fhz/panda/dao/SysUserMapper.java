package com.fhz.panda.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fhz.panda.entity.SysUser;

@Mapper
public interface SysUserMapper {

	boolean addSysUser(SysUser user);
	
	Integer countAll(Integer id);
	
	List<SysUser> findAll();
	
	
}
