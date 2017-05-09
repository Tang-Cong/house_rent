package cn.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.dao.CommentDao;
import cn.dao.RentDao;
import cn.domain.Comment;
import cn.domain.PageBean;
import cn.domain.Rent;
import cn.service.CommentService;
@Transactional
public class CommentServiceImpl implements CommentService {
	private CommentDao commentDao;

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	@Override
	public PageBean<Comment> findByPage(Integer currPage) {
		PageBean<Comment> pageBean=new PageBean<Comment>();
		//封装当前的页数
		pageBean.setCurrPage(currPage);
		//封装每页的记录数
		int pageSize = 3;
		pageBean.setPageSize(pageSize);		
		//封装总记录数
		int totalCount=commentDao.findCount();
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tc=totalCount;
		Double num=Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		//封装每页显示的数据
		int begin=(currPage-1) * pageSize;
		List<Comment> list=commentDao.findByPage(begin,pageSize);		
		pageBean.setList(list);
		return pageBean;	
	}

	@Override
	public void save(Comment comment) {
		commentDao.save(comment);

	}

	@Override
	public Comment findById(Integer id) {
		return commentDao.findById(id);
	}

	@Override
	public void update(Comment comment) {
		commentDao.update(comment);

	}

	@Override
	public void delete(Comment comment) {
		commentDao.delete(comment);
		
	}


}
