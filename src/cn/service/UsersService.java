package cn.service;

import cn.domain.PageBean;
import cn.domain.Users;

public interface UsersService {

	Users login(Users users);

	PageBean<Users> findByPage(Integer currPage);

	Users findById(Integer id);

	void update(Users users);

	void delete(Users users);

	void save(Users users);

}
