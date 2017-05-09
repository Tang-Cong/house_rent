package cn.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.dao.RentDao;
import cn.dao.UsersDao;
import cn.domain.PageBean;
import cn.domain.Rent;
import cn.domain.Users;
import cn.service.RentService;
@Transactional
public class RentServiceImpl implements RentService {
	private RentDao rentDao;

	public void setRentDao(RentDao rentDao) {
		this.rentDao = rentDao;
	}

	@Override
	public PageBean<Rent> findByPage(Integer currPage) {
		PageBean<Rent> pageBean=new PageBean<Rent>();
		//封装当前的页数
		pageBean.setCurrPage(currPage);
		//封装每页的记录数
		int pageSize = 3;
		pageBean.setPageSize(pageSize);		
		//封装总记录数
		int totalCount=rentDao.findCount();
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tc=totalCount;
		Double num=Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		//封装每页显示的数据
		int begin=(currPage-1) * pageSize;
		List<Rent> list=rentDao.findByPage(begin,pageSize);		
		pageBean.setList(list);
		return pageBean;	
	}

	@Override
	public List<Rent> findByName(String rname) {
		return rentDao.findByName(rname);
	}
	@Override
	public Rent findById(Integer id) {
		return rentDao.findById(id);
	}

	@Override
	public void update(Rent rent) {
		rentDao.update(rent);

	}

	@Override
	public void save(Rent rent) {
		rentDao.save(rent);

	}

	@Override
	public void delete(Rent rent) {
		rentDao.delete(rent);
		
	}


}
