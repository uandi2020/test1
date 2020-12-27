package com.example.demo.dao;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.testEntity;

public interface testDao extends JpaRepository<testEntity, Long> {


	@Query
	testEntity getByIdx(Long idx);



}
