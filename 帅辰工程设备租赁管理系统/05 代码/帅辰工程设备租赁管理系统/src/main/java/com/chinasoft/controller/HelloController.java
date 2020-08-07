package com.chinasoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

	
	 @RequestMapping("/hello") //请求路径
	 
	 @ResponseBody //返回字符串 
	 public String helloWorld() {
		 return	 "HelloWorld SpringBoot!!"; 
		 }
	
	@RequestMapping("/")//请求路径
	public String Login()
	{
		return "login"; //登陆jsp
	}
	
	@RequestMapping("/update")//请求路径
	public String Update()
	{
		return "update"; //修改jsp
	}
	
	@RequestMapping("/updatedevicenumber")//请求路径
	public String UpdateDevicenumber()
	{
		return "updatedevicenumber"; //修改设备数量jsp
	}
	
	@RequestMapping("/updatedeviceprice")//请求路径
	public String UpdateDeviceprice()
	{
		return "updatedeviceprice"; //修改设备费用
	}
	
	@RequestMapping("/insertdevice")//请求路径
	public String InsertDevice()
	{
		return "insertdevice"; //增加设备jsp
	}
	
	@RequestMapping("/insertrent")//请求路径
	public String InsertRent()
	{
		return "insertrent"; //增加租赁订单jsp
	}
	
	@RequestMapping("/insertrepair")//请求路径
	public String InsertRepair()
	{
		return "insertrepair"; //增加维修订单jsp
	}
	
	@RequestMapping("/insertmoney")//请求路径
	public String InsertMoney()
	{
		return "insertmoney"; //修改jsp
	}
	
	@RequestMapping("/insertcustom")//请求路径
	public String InsertCustom()
	{
		return "insertcustom"; //修改jsp
	}
	
	@RequestMapping("/insert")//请求路径
	public String Insert()
	{
		return "insert"; //菜单jsp
	}
	
	@RequestMapping("/Meau")//请求路径
	public String Meau()
	{
		return "meau"; //菜单jsp
	}
	
	@RequestMapping("/Rent")//请求路径租赁
	public String Rent()
	{
		return "rent";  //租赁jsp
	}
	
	@RequestMapping("/Device")//请求路径设备
	public String Equipment()
	{
		return "Device";  //设备jsp
	}
	
	@RequestMapping("/Custom")//请求路径设备
	public String Custom()
	{
		return "custom";  //设备jsp
	}
	
	
	@RequestMapping("/Money")//请求路径财务
	public String Money()
	{
		return "money";  //财务jsp
	}
	
	@RequestMapping("/Repair")//请求维修财务
	public String Maintain()
	{
		return "repair";  //维修jsp
	}
	
	@RequestMapping("/Personnel")//请求维修人事
	public String Personnel()
	{
		return "personnel";  //人事jsp
	}
	
	@RequestMapping("/updatecustom")//请求路径
	public String Updatecustom()
	{
		return "updatecustom"; //修改jsp
	}
	
	@RequestMapping("/updaterent")//请求路径
	public String Updaterent()
	{
		return "updaterent"; //修改jsp
	}
	
}
