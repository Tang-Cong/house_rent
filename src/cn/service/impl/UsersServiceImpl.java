package cn.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.dao.UsersDao;
import cn.domain.PageBean;
import cn.domain.Users;
import cn.service.UsersService;
@Transactional
public class UsersServiceImpl implements UsersService {
	private UsersDao usersDao;

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}

	@Override
	public Users login(Users users) {
		Users existUsers=usersDao.findByUsernameAndPassword(users);
		return existUsers;
	}

	@Override
	public PageBean<Users> findByPage(Integer currPage) {
		PageBean<Users> pageBean=new PageBean<Users>();
		//封装当前的页数
		pageBean.setCurrPage(currPage);
		//封装每页的记录数
		int pageSize = 3;
		pageBean.setPageSize(pageSize);		
		//封装总记录数
		int totalCount=usersDao.findCount();
		pageBean.setTotalCount(totalCount);
		//封装总页数
		double tc=totalCount;
		Double num=Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		//封装每页显示的数据
		int begin=(currPage-1) * pageSize;
		List<Users> list=usersDao.findByPage(begin,pageSize);		
		pageBean.setList(list);
		return pageBean;	
	}

	@Override
	public Users findById(Integer id) {
		// TODO Auto-generated method stub
		return usersDao.findById(id);
	}

	@Override
	public void update(Users users) {
		usersDao.update(users);
		
	}

	@Override
	public void delete(Users users) {
		usersDao.delete(users);
		
	}

	@Override
	public void save(Users users) {
		usersDao.save(users);
	}

}
