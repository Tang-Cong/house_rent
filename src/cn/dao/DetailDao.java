package cn.dao;

import java.util.List;

import cn.domain.Detail;

public interface DetailDao {

	void save(Detail detail);

	List<Detail> find(Integer cno);

}
