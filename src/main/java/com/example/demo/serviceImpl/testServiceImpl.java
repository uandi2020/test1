package com.example.demo.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.testDao;
import com.example.demo.entity.testEntity;
import com.example.demo.service.testService;


@Service
public class testServiceImpl implements testService {

	@Autowired
	testDao tDao;

	@Override
	public List<testEntity> getList() {
		// TODO Auto-generated method stub
		return tDao.findAll();
	}

	@Override
	public testEntity save(testEntity tEntity) {
		// TODO Auto-generated method stub
		return tDao.save(tEntity);
	}


	@Override
	public testEntity getById(Long idx) {
		// TODO Auto-generated method stub
		testEntity tEntity = tDao.getByIdx(idx);
		return tEntity;
	}

	@Override
	public void deleteById(Long idx) {
		// TODO Auto-generated method stub
		tDao.deleteById(idx);
	}












}
