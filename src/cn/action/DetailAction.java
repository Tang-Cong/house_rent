package cn.action;

import java.util.List;

import cn.domain.Comment;
import cn.domain.Detail;
import cn.domain.PageBean;
import cn.service.CommentService;
import cn.service.DetailService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DetailAction extends ActionSupport implements ModelDriven<Detail>{
	private Detail detail=new Detail();
	@Override
	public Detail getModel() {
		// TODO Auto-generated method stub
		return detail;
	}
	
	//注入业务层的类
	private DetailService detailService;
	public void setDetailService(DetailService detailService) {
		this.detailService = detailService;
	}
	
	public String save()
	{
		detailService.save(detail);
		return "saveSuccess";
	}
	public String findAll()
	{
		List<Detail> list=detailService.find(detail.getCno());
		//将pageBean存入到值栈中
		ActionContext.getContext().getValueStack().set("list",list);//对象用push
		return "findAll";
	}

}
