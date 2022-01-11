package kr.co.mlec.util;

import java.sql.Connection;
import java.sql.Statement;

public class JDBCClose {
	
	//이미 다른데 있는 자원을 해지하는 목적임..  static은 하나만 만들어짐 클래스이름.
	public static void close(Statement stmt, Connection conn) {
		
		if( stmt !=null) {
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	
		
		if(conn !=null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
	}
	

}
