package cn.service;

import java.util.List;

import cn.domain.Comment;
import cn.domain.PageBean;
import cn.domain.Rent;

public interface CommentService {

	PageBean<Comment> findByPage(Integer currPage);

	void save(Comment comment);

	Comment findById(Integer id);

	void update(Comment comment);
	
	void delete(Comment comment);

}
