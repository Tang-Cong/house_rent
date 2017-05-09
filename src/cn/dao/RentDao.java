package cn.dao;

import java.util.List;

import cn.domain.Rent;

public interface RentDao {

	int findCount();

	List<Rent> findByPage(int begin, int pageSize);

	List<Rent> findByName(String rname);
	
	Rent findById(Integer id);

	void update(Rent rent);

	void save(Rent rent);

	void delete(Rent rent);

}
