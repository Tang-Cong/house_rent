package cn.service;

import java.util.List;

import cn.domain.PageBean;
import cn.domain.Rent;

public interface RentService {

	PageBean<Rent> findByPage(Integer currPage);

	List<Rent> findByName(String rname);
	
	Rent findById(Integer id);

	void update(Rent rent);

	void save(Rent rent);

	void delete(Rent rent);

}
