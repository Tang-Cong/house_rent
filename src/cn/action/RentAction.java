package cn.action;

import java.util.List;

import cn.domain.PageBean;
import cn.domain.Rent;
import cn.domain.Users;
import cn.service.RentService;
import cn.service.UsersService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RentAction extends ActionSupport implements ModelDriven<Rent>{
	//模型驱动使用的对象
	private Rent rent=new Rent();
	@Override
	public Rent getModel() {
		return rent;
	}
	
	//注入业务层的类
	private RentService rentService;
	public void setRentService(RentService rentService) {
		this.rentService = rentService;
	}

	
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	private Integer currPage=1;
	/**
	 * 分页查询出租信息的执行方法
	 */
	public String findAll()
	{
		PageBean<Rent> pageBean=rentService.findByPage(currPage);
		//将pageBean存入到值栈中
		ActionContext.getContext().getValueStack().push(pageBean);//对象用push
		return "findAll";
	}
	
	public String findByName()
	{
		List<Rent> list=rentService.findByName(rent.getRname());
		//将List存入到值栈中
		ActionContext.getContext().getValueStack().set("list", list);//对象用push
		return "findByName";
	}
	public String findById()
	{
		rent=rentService.findById(rent.getId());
		//将pageBean存入到值栈中
		return "findById";
	}

	
	//发布出租信息的执行方法
	public String save()
	{
		rentService.save(rent);
		return "saveSuccess";
	}
	
	//跳转到一个添加出租信息页面的方法
	public String saveUI()
	{
		return "saveUI";
	}
	
	//编辑出租信息的方法
	public String edit()
	{
		rent=rentService.findById(rent.getId());
//		//查询所有部门
//		List<Department> list=departmentService.findAll();
//		ActionContext.getContext().getValueStack().set("list", list);//集合用set
		return "editSuccess";
	}
	
	//修改出租信息的执行方法
	public String update()
	{
		rentService.update(rent);
		return "updateSuccess";
	}
	//删除出租信息的执行方法
	public String delete()
	{
		rent=rentService.findById(rent.getId());
		rentService.delete(rent);
		return "deleteSuccess";
	}

}