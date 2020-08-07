package com.chinasoft.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.model.MyCustom;
import com.chinasoft.model.MyDevice;
import com.chinasoft.model.MyMoney;
import com.chinasoft.model.MyRent;
import com.chinasoft.model.MyRepair;
import com.chinasoft.model.MyUser;
import com.chinasoft.po.MyUserTable;
import com.chinasoft.service.HandleService;

@Controller
@RequestMapping("/handle")
public class HandleController {

	@Autowired
	private HandleService  handleService;
	
	
	@RequestMapping("/login")
	public String login(MyUser myUser,Model  model,HttpSession session)
	{
		return handleService.login(myUser,model,session);
	}
	
	@RequestMapping("/selectAllUserByPage") //用户查找
	public String selectAllUserByPage(Model  model,int currentPage)
	{
		return handleService.selectAllUserByPage(model, currentPage);
	}
	
	@RequestMapping("/selectAllRepairByPage") //维修查找
	public String selectAllRepairByPage(Model  model,int currentPage)
	{
		return handleService.selectAllRepairByPage(model, currentPage);
	}
	
	@RequestMapping("/selectAllDeviceByPage")  //设备查找
	public String selectAllDeviceByPage(Model  model,int currentPage)
	{
		return handleService.selectAllDeviceByPage(model, currentPage);
	}
	
	@RequestMapping("/selectAllMoneyByPage")  //财务查找
	public String selectAllMoneyByPage(Model  model,int currentPage)
	{
		return handleService.selectAllMoneyByPage(model, currentPage);
	}
	
	@RequestMapping("/selectAllRentByPage")  //租赁查找
	public String selectAllRentByPage(Model  model,int currentPage)
	{
		return handleService.selectAllRentByPage(model, currentPage);
	}
	
	@RequestMapping("/selectAllCustomByPage")  //客户查找
	public String selectAllCustomByPage(Model  model,int currentPage)
	{
		return handleService.selectAllCustomByPage(model, currentPage);
	}
	
	@RequestMapping("/update")
	public String update(MyUserTable myUser,Model model,HttpSession session)
	{
		//TODO
		return handleService.update(myUser, model, session);
	}
	
	@RequestMapping("/updatedevicenumber")
	public String updateDeviceNumber(MyDevice myDevice,Model model,HttpSession session)
	{
		//TODO
		return handleService.updatedevicenumber(myDevice, model, session);
	}
	
	@RequestMapping("/updatedeviceprice")
	public String updatePrice(MyDevice myDevice,Model model,HttpSession session)
	{
		//TODO
		return handleService.updatedeviceprice(myDevice, model, session);
	}
	
	@RequestMapping("/delete")
	public  String delete(int id,Model model,HttpSession session)
	{
		//TODO
		return handleService.delete(id,model, session);
	}
	
	@RequestMapping("/deletecustom")
	public  String deleteCustom(int cid,Model model,HttpSession session)
	{
		//TODO
		return handleService.deletecustom(cid,model, session);
	}
	
	@RequestMapping("/insert")
	public  String insert(MyUserTable myUser,Model model,HttpSession session)
	{
		//TODO
		return handleService.insert(myUser, model, session);
	}
	
	@RequestMapping("/insertdevice")
	public  String insertdevice(MyDevice myDevice,Model model,HttpSession session)
	{
		//TODO
		return handleService.insertdevice(myDevice, model, session);
	}
	
	@RequestMapping("/insertrent")
	public  String insertRent(MyRent myrent,Model model,HttpSession session)
	{
		//TODO
		return handleService.insertrent(myrent, model, session);
	}
	
	@RequestMapping("/insertcustom")
	public  String insertCustom(MyCustom mycustom,Model model,HttpSession session)
	{
		//TODO
		return handleService.insertcustom(mycustom, model, session);
	}
	
	@RequestMapping("/insertrepair")
	public  String insertRepair(MyRepair myrepair,Model model,HttpSession session)
	{
		//TODO
		return handleService.insertrepair(myrepair, model, session);
	}
	
	@RequestMapping("/insertmoney")
	public  String insertMoney(MyMoney mymoney,Model model,HttpSession session)
	{
		//TODO
		return handleService.insertmoney(mymoney, model, session);
	}
	
	//修改电话
	@RequestMapping("/updatecustom")
	public  String updateCustom(MyCustom mycustom,Model model,HttpSession session)
	{
		return handleService.updatecustom(mycustom, model, session);
	}
	//修改订单总价
	@RequestMapping("/updaterent")
	public  String updateRent(MyRent myrent,Model model,HttpSession session)
	{
		return handleService.updaterent(myrent, model, session);
	}
}
