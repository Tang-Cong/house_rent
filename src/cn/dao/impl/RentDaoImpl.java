package cn.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import cn.dao.RentDao;
import cn.domain.Rent;

public class RentDaoImpl extends HibernateDaoSupport  implements RentDao {

	@Override
	public int findCount() {
		String hql="select count(*) from Rent";
		List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
		if(list.size()>0)
		{
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Rent> findByPage(int begin, int pageSize) {
		DetachedCriteria criteria=DetachedCriteria.forClass(Rent.class);
		List<Rent> list=(List<Rent>) this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	@Override
	public List<Rent> findByName(String rname) {
		StringBuilder hql=new StringBuilder("from Rent where rname='");
		hql.append(rname+"'");
		List<Rent> list=(List<Rent>) this.getHibernateTemplate().find(hql.toString());
		return list;
		
	}
	@Override
	public Rent findById(Integer id) {
		return this.getHibernateTemplate().get(Rent.class, id);
		
	}

	@Override
	public void update(Rent rent) {
		this.getHibernateTemplate().update(rent);

	}

	@Override
	public void save(Rent rent) {
		this.getHibernateTemplate().save(rent);

	}

	@Override
	public void delete(Rent rent) {
		this.getHibernateTemplate().delete(rent);
		
	}

}
