package com.pofol.main;


import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDao {
		
	@Autowired
    private SqlSession session;
    private static String namespace = "com.pofol.kurly.TestMapper.";

	public Date now() throws Exception {
		return session.selectOne(namespace+"now");
	}
}
