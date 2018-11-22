package com.fhz.panda.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 系统用户类 
 * @author fenghongzhag
 * @date  2018年11月21日
 */
@Data
@NoArgsConstructor
public class SysUser implements Serializable{

	private static final long serialVersionUID = -3639991381771882808L;
	
	private Integer sysUserId;
	private Integer groupId;
	private String sysUserName;
	private String sysUserPwd;
	private String sysyUserphone;
	private Integer sysUserSex;
	private String sysUserQQ;
	private String sysUserEmail;
	private String sysUserAddress;
	private String sysUserLastLoginIp;
	private String sysUserImageUrl;
	private String sysUserSchool;
	private Date sysyUserRegisterTime;
	private String sysUserRegisterIp;
	private Integer sysUserLock;
	private Integer sysUserFreeze;
	private Integer sysUserRoleId;
	
	@Override
	public String toString() {
		return "SysUser [sysUserId=" + sysUserId + ", groupId=" + groupId + ", sysUserName=" + sysUserName
				+ ", sysUserPwd=" + sysUserPwd + ", sysyUserphone=" + sysyUserphone + ", sysUserSex=" + sysUserSex
				+ ", sysUserQQ=" + sysUserQQ + ", sysUserEmail=" + sysUserEmail + ", sysUserAddress=" + sysUserAddress
				+ ", sysUserLastLoginIp=" + sysUserLastLoginIp + ", sysUserImageUrl=" + sysUserImageUrl
				+ ", sysUserSchool=" + sysUserSchool + ", sysyUserRegisterTime=" + sysyUserRegisterTime
				+ ", sysUserRegisterIp=" + sysUserRegisterIp + ", sysUserLock=" + sysUserLock + ", sysUserFreeze="
				+ sysUserFreeze + ", sysUserRoleId=" + sysUserRoleId + "]";
	}
	
	
}
