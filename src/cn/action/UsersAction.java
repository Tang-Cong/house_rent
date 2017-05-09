package cn.action;

import java.util.List;

import cn.domain.PageBean;
import cn.domain.Users;
import cn.service.UsersService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UsersAction extends ActionSupport implements ModelDriven<Users>{
	//模型驱动使用的对象
	private Users users=new Users();
	@Override
	public Users getModel() {
		return users;
	}
	
	//注入业务层的类
	private UsersService usersService;
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	/**
	 * 登录执行的方法
	 * @return
	 */
	public String login()
	{	
		System.out.println("Login方法执行了！");
		//调用业务层的类
		Users existUsers=usersService.login(users);
		if(existUsers == null)
		{
			//登录失败
			this.addActionError("用户名或密码错误");
			return INPUT;
		}
		else
		{
			//登录成功
			ActionContext.getContext().getSession().put("existUsers", existUsers);
			if(existUsers.getLevel()==1)
			{
				return "manageSuccess";
			}
			else
				return "usersSuccess";
		}
		
	}
	
	/**
	 * 注册用户
	 * @return
	 */
	public String register()
	{
		ActionContext.getContext().getSession().put("register","true");
		return "register";
	}
	
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	private Integer currPage=1;
	/**
	 * 分页查询用户的执行方法
	 */
	public String findAll()
	{
		PageBean<Users> pageBean=usersService.findByPage(currPage);
		//将pageBean存入到值栈中
		ActionContext.getContext().getValueStack().push(pageBean);//对象用push
		return "findAll";
	}

	
	//保存用户的执行方法
	public String save()
	{
		usersService.save(users);
		return "success";
	}
	
	//编辑用户的方法
	public String edit()
	{
		users=usersService.findById(users.getId());
		return "editSuccess";
	}
	
	//修改用户的执行方法
	public String update()
	{
		usersService.update(users);
		return "updateSuccess";
	}
	//删除用户的执行方法
	public String delete()
	{
		users=usersService.findById(users.getId());
		usersService.delete(users);
		return "deleteSuccess";
	}
}
