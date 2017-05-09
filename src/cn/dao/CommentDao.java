package cn.dao;

import java.util.List;

import cn.domain.Comment;

public interface CommentDao {

	int findCount();

	void save(Comment comment);

	Comment findById(Integer id);

	void update(Comment comment);

	void delete(Comment comment);

	List<Comment> findByPage(int begin, int pageSize);

}
