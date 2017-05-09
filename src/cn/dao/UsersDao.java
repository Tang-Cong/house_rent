package cn.dao;

import java.util.List;

import cn.domain.Users;

public interface UsersDao {

	Users findByUsernameAndPassword(Users users);

	List<Users> findByPage(int begin, int pageSize);

	Users findById(Integer id);

	void update(Users users);

	void delete(Users users);

	void save(Users users);

	int findCount();

}
