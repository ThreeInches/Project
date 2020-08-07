package com.chinasoft.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.chinasoft.model.MyCustom;
import com.chinasoft.model.MyDevice;
import com.chinasoft.model.MyMoney;
import com.chinasoft.model.MyRent;
import com.chinasoft.model.MyRepair;
import com.chinasoft.model.MyUser;
import com.chinasoft.po.MyUserTable;

/**
 * 
 * @author Administrator
 *  数据访问层通过mybatis的mapper映射接口
 */
@Mapper
public interface HandleDao {

	
	public  List<MyUserTable> login(MyUser myUser);

	public List<Map<String,Object>> selectAllUserByPage(@Param("startIndex") int startIndex,@Param("perPageSize") int perPageSize);
	public List<Map<String,Object>> selectAllDeviceByPage(@Param("startIndex") int startIndex,@Param("perPageSize") int perPageSize);
	public List<Map<String,Object>> selectAllMoneyByPage(@Param("startIndex") int startIndex,@Param("perPageSize") int perPageSize);
	public List<Map<String,Object>> selectAllRentByPage(@Param("startIndex") int startIndex,@Param("perPageSize") int perPageSize);
	public List<Map<String,Object>> selectAllRepairByPage(@Param("startIndex") int startIndex,@Param("perPageSize") int perPageSize);
	public List<Map<String,Object>> selectAllCustomByPage(@Param("startIndex") int startIndex,@Param("perPageSize") int perPageSize);
	public List<Map<String ,Object>> selectAll();
	public List<Map<String ,Object>> selectAllDevice();
	public List<Map<String ,Object>> selectAllMoney();
	public List<Map<String ,Object>> selectAllRent();
	public List<Map<String ,Object>> selectAllRepair();
	public List<Map<String ,Object>> selectAllCustom();
	public  void delete(int id);
	public  void deletecustom(int cid);
	public  void update(MyUserTable myUser);
	public  void updatedevicenumber(MyDevice mydevice);
	public  void updatedeviceprice(MyDevice mydevice);
	public  void updatecustom(MyCustom mycustom);
	public  void updaterent(MyRent myrent);
	public  void insert(MyUserTable myUser);
	public  void insertdevice(MyDevice mydevice);
	public  void insertrent(MyRent myrent);
	public  void insertrepair(MyRepair myrepair);
	public  void insertmoney(MyMoney mymoney);
	public  void insertcustom(MyCustom mycustom);
}
