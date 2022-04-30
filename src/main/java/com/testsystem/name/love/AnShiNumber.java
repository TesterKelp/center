package com.testsystem.name.love;

import java.util.Arrays;

import org.apache.commons.lang.ArrayUtils;

public class AnShiNumber {
	
	
	
	
	public  static String GetDesc(int num){
		int[] s1={1,3,5,7,8,11,13,15,16,18,21,23,24,25,31,32,33,35,37,39,41,45,47,48,52,57,61,63,65,67,68,81};
		int[] s2={6,17,26,27,29,30,38,49,51,55,58,71,73,75};
		int[] s3={2,4,9,10,12,14,19,20,22,28,34,36,40,42,43,44,46,50,53,54,56,59,60,62,64,66,69,70,72,74,76,77,78,79,80};
		int[] s4={3,13,16,21,23,29,31,37,39,41,45,47};
		int[] s5={15,16,24,29,32,33,41,52};
		int[] s6={13,14,18,26,29,33,35,38,48};
		int[] s7={5,6,11,13,15,16,24,32,35};
		int[] s8={21,23,26,28,29,33,39};
		int[] s9={4,10,12,14,22,28,34};
		int[] s10={5,6,15,16,32,39,41};
		int[] s11={7,17,18,25,27,28,37,47};
		int[] s12={5,6,11,15,16,24,31,32,35};
		String temp = "" ;
		
		if(T(s1,num)){
			temp = temp + "吉祥运暗示数（代表健全、幸福、名誉等）<br>" ;
		}

		if(T(s2,num)){
			temp = temp + "次吉祥运暗示数（代表多少有些障碍，但能获得吉运）<br>" ;
		}
		if(T(s3,num)){
			temp =  temp + "凶数运暗示数（代表逆境、沉浮、薄弱、病难、困难、多灾等）<br>" ;
		}
		if(T(s4,num)){
			temp =  temp + "首领运暗示数（智慧仁勇全备、立上位、能领导众人）<br>" ;
		}
		if(T(s5,num)){
			temp =  temp + "财富运暗示数（多钱财、富贵、白手可获巨财）<br>" ;
		}
		if(T(s6,num)){
			temp =  temp + "艺能运暗示数（富有艺术天才，对审美、艺术、演艺、体育有通达之能）<br>" ;
		}
		if(T(s7,num)){
			temp =  temp + "女德运暗示数（具有妇德，品性温良，助夫爱子）<br>" ;
		}
		if(T(s8,num)){
			temp =  temp + "女性孤寡运暗示数（难觅夫君，家庭不和，夫妻两虎相斗，离婚，严重者夫妻一方早亡）<br>" ;
		}
		if(T(s9,num)){
			temp =  temp + "孤独运暗示数（妻凌夫或夫克妻）<br>" ;
		}
		if(T(s10,num)){
			temp =  temp + "双妻运暗示数 <br>" ;
		} 
		if(T(s11,num)){
			temp =  temp + "刚情运暗示数（性刚固执、意气用事）<br>" ;
		}
		if(T(s12,num)) {
			temp =  temp + "温和运暗示数（性情平和、能得上下信望）<br>" ;
		}
		return temp;
		
	}
	
	public static boolean T(int[] arr, int target) {   
	    return ArrayUtils.contains(arr,target);
	}
	
	
	
	
	

}
