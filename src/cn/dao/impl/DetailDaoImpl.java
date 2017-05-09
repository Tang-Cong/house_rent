package cn.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.dao.DetailDao;
import cn.domain.Comment;
import cn.domain.Detail;
import cn.domain.Users;

public class DetailDaoImpl extends HibernateDaoSupport implements DetailDao {

	@Override
	public void save(Detail detail) {
		this.getHibernateTemplate().save(detail);

	}


	@Override
	public List<Detail> find(Integer cno) {
		String hql="from Detail where cno=?";
		List<Detail> list=(List<Detail>) this.getHibernateTemplate().find(hql,cno);
		return list;
	}

}
