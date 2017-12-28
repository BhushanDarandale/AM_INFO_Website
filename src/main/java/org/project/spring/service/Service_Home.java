package org.project.spring.service;

import org.project.spring.dao.DAO_Home;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service")
public class Service_Home {

	@Autowired
	DAO_Home dao;

}
