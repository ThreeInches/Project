package com.chinasoft.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.chinasoft.dao.HandleDao;
import com.chinasoft.model.MyCustom;
import com.chinasoft.model.MyDevice;
import com.chinasoft.model.MyMoney;
import com.chinasoft.model.MyRent;
import com.chinasoft.model.MyRepair;
import com.chinasoft.model.MyUser;
import com.chinasoft.po.MyUserTable;

@Service
public class HandleServiceImpl implements HandleService {

	@Autowired
	private HandleDao  handlDao ;
	

	
	public String login(MyUser myUser, Model model, HttpSession session) {
		  
		 if(handlDao.login(myUser).size() >0)
		 {
			 session.setAttribute("myuser", myUser);
			 //重定向到控制器某个方法，实现用户查询
			 return "redirect:/Meau";
		 }
		
		 model.addAttribute("erroMessage","用户名或密码错误！！");
		 return "login";
	}

	
	public String selectAllUserByPage(Model modle, int currentPage) {
		 
		List<Map<String,Object>> allUser = handlDao.selectAll();
		
		//共多少个用户
		int totalCount = allUser.size();
		//计算共多少页
		int pageSize = 5;
		 int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);
		
		List<Map<String,Object>> userByPage = handlDao.selectAllUserByPage((currentPage-1)*pageSize, pageSize);
		modle.addAttribute("allUser",userByPage);
		modle.addAttribute("totalPage",totalPage);
		modle.addAttribute("currentPage",currentPage);
		
		return "personnel";
	}

	public  String selectAllDeviceByPage(Model modle ,int currentPage) {
	
		
		List<Map<String,Object>> allUser = handlDao.selectAllDevice();

		//共多少个设备
		int totalCount = allUser.size();
		//计算共多少页
		int pageSize = 1000;
		int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

		List<Map<String,Object>> userByPage = handlDao.selectAllDeviceByPage((currentPage-1)*pageSize, pageSize);
		modle.addAttribute("allUser",userByPage);
		modle.addAttribute("totalPage",totalPage);
		modle.addAttribute("currentPage",currentPage);
	
		
		return "Device";
	}
	
	public  String selectAllMoneyByPage(Model modle ,int currentPage) {
	
		
		List<Map<String,Object>> allUser = handlDao.selectAllMoney();

		//共多少个设备
		int totalCount = allUser.size();
		//计算共多少页
		int pageSize = 1000;
		int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

		List<Map<String,Object>> userByPage = handlDao.selectAllMoneyByPage((currentPage-1)*pageSize, pageSize);
		modle.addAttribute("allUser",userByPage);
		modle.addAttribute("totalPage",totalPage);
		modle.addAttribute("currentPage",currentPage);
	
		
		return "money";
	}
	
	public  String selectAllRentByPage(Model modle ,int currentPage) {
	
		
		List<Map<String,Object>> allUser = handlDao.selectAllRent();

		//共多少个设备
		int totalCount = allUser.size();
		//计算共多少页
		int pageSize = 1000;
		int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

		List<Map<String,Object>> userByPage = handlDao.selectAllRentByPage((currentPage-1)*pageSize, pageSize);
		modle.addAttribute("allUser",userByPage);
		modle.addAttribute("totalPage",totalPage);
		modle.addAttribute("currentPage",currentPage);
	
		
		return "rent";
	}
	
	
	public  String selectAllRepairByPage(Model modle ,int currentPage) {
	
		
		List<Map<String,Object>> allUser = handlDao.selectAllRepair();

		//共多少个设备
		int totalCount = allUser.size();
		//计算共多少页
		int pageSize = 1000;
		int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

		List<Map<String,Object>> userByPage = handlDao.selectAllRepairByPage((currentPage-1)*pageSize, pageSize);
		modle.addAttribute("allUser",userByPage);
		modle.addAttribute("totalPage",totalPage);
		modle.addAttribute("currentPage",currentPage);
	
		
		return "repair";
	}

	public  String selectAllCustomByPage(Model modle ,int currentPage) {
	
		
		List<Map<String,Object>> allUser = handlDao.selectAllCustom();

		//共多少个设备
		int totalCount = allUser.size();
		//计算共多少页
		int pageSize = 1000;
		int totalPage = (int) Math.ceil(totalCount*1.0/pageSize);

		List<Map<String,Object>> userByPage = handlDao.selectAllCustomByPage((currentPage-1)*pageSize, pageSize);
		modle.addAttribute("allUser",userByPage);
		modle.addAttribute("totalPage",totalPage);
		modle.addAttribute("currentPage",currentPage);
	
		
		return "custom";
	}
	
	public  String delete(int id,Model model,HttpSession session) {
		handlDao.delete(id);
		return "redirect:/handle/selectAllUserByPage?currentPage=1";
	}
	
	public  String deletecustom(int cid,Model model,HttpSession session) {
		handlDao.deletecustom(cid);
		return "redirect:/handle/selectAllCustomByPage?currentPage=1";
	}
	
	public  String update(MyUserTable myUser,Model model,HttpSession session) {
		handlDao.update(myUser);
		return "redirect:/handle/selectAllUserByPage?currentPage=1";
	}
	
	public  String updatedevicenumber(MyDevice mydevice,Model model,HttpSession session) {
		handlDao.updatedevicenumber(mydevice);
		return "redirect:/handle/selectAllDeviceByPage?currentPage=1";
	}
	
	public  String updatedeviceprice(MyDevice mydevice,Model model,HttpSession session) {
		handlDao.updatedeviceprice(mydevice);
		return "redirect:/handle/selectAllDeviceByPage?currentPage=1";
	}
	
	public  String insert(MyUserTable myUser,Model model,HttpSession session){
		handlDao.insert(myUser);
		return "redirect:/handle/selectAllUserByPage?currentPage=1";
	}
	
	public  String insertdevice(MyDevice mydevice,Model model,HttpSession session) {
		handlDao.insertdevice(mydevice);
		return "redirect:/handle/selectAllDeviceByPage?currentPage=1";
	}
	
	public  String insertrent(MyRent myrent,Model model,HttpSession session) {
		handlDao.insertrent(myrent);
		return "redirect:/handle/selectAllRentByPage?currentPage=1";
	}
	
	public  String insertrepair(MyRepair myrepair,Model model,HttpSession session) {
		handlDao.insertrepair(myrepair);
		return "redirect:/handle/selectAllRepairByPage?currentPage=1";
	}
	
	public  String insertmoney(MyMoney mymoney,Model model,HttpSession session) {
		handlDao.insertmoney(mymoney);
		return "redirect:/handle/selectAllMoneyByPage?currentPage=1";
	}
	
	public  String insertcustom(MyCustom mycustom,Model model,HttpSession session) {
		handlDao.insertcustom(mycustom);
		return "redirect:/handle/selectAllCustomByPage?currentPage=1";
	}


	public String updatecustom(MyCustom mycustom, Model model, HttpSession session) {
		handlDao.updatecustom(mycustom);
		return "redirect:/handle/selectAllCustomByPage?currentPage=1";
	}
	
	public String updaterent(MyRent myrent, Model model, HttpSession session) {
		handlDao.updaterent(myrent);
		return "redirect:/handle/selectAllRentByPage?currentPage=1";
	}
}
