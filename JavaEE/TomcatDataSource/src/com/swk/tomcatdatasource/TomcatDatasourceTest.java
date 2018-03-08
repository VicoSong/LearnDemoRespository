package com.swk.tomcatdatasource;


import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TomcatDatasourceTest {
	public void add() 
	{
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext=(Context)initContext.lookup("java:/comp/env");
			DataSource ds=(DataSource)envContext.lookup("jdbc/demo");
			Connection conn=ds.getConnection();
			System.out.println(conn.toString());
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	}
}
