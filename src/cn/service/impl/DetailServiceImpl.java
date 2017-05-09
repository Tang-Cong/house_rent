package cn.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.dao.DetailDao;
import cn.dao.RentDao;
import cn.domain.Detail;
import cn.domain.PageBean;
import cn.domain.Rent;
import cn.service.DetailService;
@Transactional
public class DetailServiceImpl implements DetailService {
	private DetailDao detailDao;

	public void setDetailDao(DetailDao detailDao) {
		this.detailDao = detailDao;
	}

	@Override
	public void save(Detail detail) {
		detailDao.save(detail);
		
	}

	@Override
	public List<Detail> find(Integer cno) {
		List<Detail> list=detailDao.find(cno);		
		return list;	
	}

}
