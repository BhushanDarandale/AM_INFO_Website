package org.project.spring.service;

import org.project.spring.dao.impl.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service")
public class MyService {

	@Autowired
	DAO dao;

}
