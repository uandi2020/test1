package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.testEntity;

public interface testService {

	public List<testEntity> getList();

	public testEntity save(testEntity tEntity);


	public testEntity getById(Long idx);

	public void deleteById(Long idx);

}
