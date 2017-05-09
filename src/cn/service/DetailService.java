package cn.service;

import java.util.List;

import cn.domain.Detail;
import cn.domain.PageBean;

public interface DetailService {

	void save(Detail detail);

	List<Detail> find(Integer cno);

}
