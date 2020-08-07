package com.chinasoft.service;


import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.chinasoft.model.MyCustom;
import com.chinasoft.model.MyDevice;
import com.chinasoft.model.MyMoney;
import com.chinasoft.model.MyRent;
import com.chinasoft.model.MyRepair;
import com.chinasoft.model.MyUser;
import com.chinasoft.po.MyUserTable;

public interface HandleService {

	public  String login(MyUser myUser,Model model,HttpSession session);
	
	public  String selectAllUserByPage(Model modle ,int currentPage); //获取用户列表
	public  String selectAllDeviceByPage(Model modle ,int currentPage); //获取设备列表
	public  String selectAllMoneyByPage(Model modle ,int currentPage); //获取财务信息表
	public  String selectAllRentByPage(Model modle ,int currentPage); //获取租赁信息表
	public  String selectAllRepairByPage(Model modle ,int currentPage); //获取维修信息表
	public  String selectAllCustomByPage(Model modle ,int currentPage); //获取客户信息表
	
	public  String delete(int id,Model model,HttpSession session);
	
	public  String deletecustom(int cid,Model model,HttpSession session);

	public  String update(MyUserTable myUser,Model model,HttpSession session);  //用户修改
	
	public  String updaterent(MyRent myrent,Model model,HttpSession session);  //用户修改
	
	public  String updatecustom(MyCustom mycustom,Model model,HttpSession session);  //客户修改
	
	public  String updatedevicenumber(MyDevice myDevice,Model model,HttpSession session);  //设备修改数量
	
	public  String updatedeviceprice(MyDevice myDevice,Model model,HttpSession session);  //设备修改费用
	
	public  String insert(MyUserTable myUser,Model model,HttpSession session);  //增加用户
	
	public  String insertdevice(MyDevice myDevice,Model model,HttpSession session);  //增加设备
	
	public  String insertrent(MyRent myrent,Model model,HttpSession session);  //增加租赁订单
	
	public  String insertmoney(MyMoney mymoney,Model model,HttpSession session);  //增加财务订单
	
	public  String insertrepair(MyRepair myrepair,Model model,HttpSession session);  //增加维修订单
	
	public  String insertcustom(MyCustom mycustom,Model model,HttpSession session);  //增加客户
}
