package cn.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.dao.UsersDao;
import cn.domain.Users;

public class UsersDaoImpl extends HibernateDaoSupport implements UsersDao {

	@Override
	public Users findByUsernameAndPassword(Users users) {
		String hql="from Users where uname=? and password=?";
		List<Users> list=(List<Users>) this.getHibernateTemplate().find(hql,users.getUname(),users.getPassword());
		if(list.size()>0)
			return list.get(0);
		return null;
	}

	@Override
	public List<Users> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria=DetachedCriteria.forClass(Users.class);
		List<Users> list=(List<Users>) this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	@Override
	public Users findById(Integer id) {
		return this.getHibernateTemplate().get(Users.class, id);
	}

	@Override
	public void update(Users users) {
		this.getHibernateTemplate().update(users);
		
	}

	@Override
	public void delete(Users users) {
		this.getHibernateTemplate().delete(users);
		
	}

	@Override
	public void save(Users users) {
		this.getHibernateTemplate().save(users);
		
	}

	@Override
	public int findCount() {
		String hql="select count(*) from Users";
		List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
		if(list.size()>0)
		{
			return list.get(0).intValue();
		}
		return 0;
	}

}
