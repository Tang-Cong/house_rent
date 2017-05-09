package cn.action;

import java.util.List;

import cn.domain.Comment;
import cn.domain.Detail;
import cn.domain.PageBean;
import cn.domain.Rent;
import cn.service.CommentService;
import cn.service.RentService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CommentAction extends ActionSupport implements ModelDriven<Comment>{
	//模型驱动使用的对象
	private Comment comment=new Comment();
	@Override
	public Comment getModel() {
		return comment;
	}
	
	//注入业务层的类
	private CommentService commentService;
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	private Integer currPage=1;
	/**
	 * 分页查询留言信息的执行方法
	 */
	public String findAll()
	{
		PageBean<Comment> pageBean=commentService.findByPage(currPage);
		//将pageBean存入到值栈中
		ActionContext.getContext().getValueStack().push(pageBean);//对象用push
		return "findAll";
	}

	
	//跳转到一个添加留言页面的方法
	public String saveUI()
	{
		return "saveUI";
	}
	
	//发布留言的执行方法
	public String save()
	{
		commentService.save(comment);
		return "saveSuccess";
	}
	
	//编辑留言的方法
	public String edit()
	{
		comment=commentService.findById(comment.getId());
		return "editSuccess";
	}
	
	//修改留言的执行方法
	public String update()
	{
		commentService.update(comment);
		return "updateSuccess";
	}
	//删除留言的执行方法
	public String delete()
	{
		comment=commentService.findById(comment.getId());
		commentService.delete(comment);
		return "deleteSuccess";
	}
	//添加回复
	public String details()
	{
		return "addDetail";
	}


}
