package com.fhz.panda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/sysuser")
public class SysUserController {

//	private static final String url = "http://localhost:8001/";
	private static final String url = "http://panda-admin";
	
	
	@Autowired
	private RestTemplate restTemplate;
	
	@RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
	public String get(@PathVariable("id") Integer id) {
		Integer forObject = restTemplate.getForObject(url+"/sysuser/get/"+ id, Integer.class);
		
		return forObject+"";
	}
	
	// 测试@EnableDiscoveryClient,消费端可以调用服务发现
	@RequestMapping(value = "/consumer/dept/discovery")
	public Object discovery()
	{
		return restTemplate.getForObject(url + "/sysuser/dept/discovery", Object.class);
	}
	
}
