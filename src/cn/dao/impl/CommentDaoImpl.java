package cn.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.domain.*;
import cn.dao.*;

public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {

	@Override
	public void save(Comment comment) {
		this.getHibernateTemplate().save(comment);

	}

	@Override
	public Comment findById(Integer id) {
		return this.getHibernateTemplate().get(Comment.class, id);
	}

	@Override
	public void update(Comment comment) {
		this.getHibernateTemplate().update(comment);

	}

	@Override
	public void delete(Comment comment) {
		this.getHibernateTemplate().delete(comment);
		
	}
	@Override
	public int findCount() {
		String hql="select count(*) from Comment";
		List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
		if(list.size()>0)
		{
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Comment> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria=DetachedCriteria.forClass(Comment.class);
		List<Comment> list=(List<Comment>) this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	

}
