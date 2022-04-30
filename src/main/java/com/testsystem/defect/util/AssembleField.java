package com.testsystem.defect.util;

public class AssembleField {
	
	
	public  static   String  AssembleField(String sql ,String filed ,int  size,int  num){
		

			sql =sql+","+filed;
		
		
		return sql;
	}
	
	public   static  String  AssembleFieldValue(String sql ,String value ,int  size,int  num){
		
	
			sql =sql+",'"+value+"'" ;
		
		
		return sql;
	}
	

}
