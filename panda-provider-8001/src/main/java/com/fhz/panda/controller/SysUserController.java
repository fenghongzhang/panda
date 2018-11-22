package com.fhz.panda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fhz.panda.entity.SysUser;
import com.fhz.panda.service.SysUserService;

@RestController
@RequestMapping("/sysuser")
public class SysUserController {

	@Autowired
	private SysUserService sysUserService;
	
	@RequestMapping("/add")
	public String add(@RequestBody SysUser user) {
		boolean addSysUser = sysUserService.addSysUser(user);
		return addSysUser+"";
	}
	
	@RequestMapping(value = "/get/{id}" ,method = RequestMethod.GET)
	public String get(@PathVariable("id") Integer id ) {
		Integer sysUserById = sysUserService.getSysUserById(id);
		System.out.println(sysUserById);
		return sysUserById.toString();
	}
}
