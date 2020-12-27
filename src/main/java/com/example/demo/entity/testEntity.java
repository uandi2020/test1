package com.example.demo.entity;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import lombok.Data;

@Data
@Entity
@Table(name="test001")
public class testEntity {

	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private Long idx;

	@Column(nullable = false)
	private String title;

	@Column(nullable = false)
	private String writer;

	@Column(nullable = true)
	private String contents;

	@Column(nullable = true)
	private Date regDt;


}
