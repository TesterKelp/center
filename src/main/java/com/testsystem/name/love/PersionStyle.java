package com.testsystem.name.love;

import org.apache.commons.lang.ArrayUtils;

public class PersionStyle {
	
	
	
	
	
	public static String Style(int num){
		
		String  result ="貌美如花，赛潘安" ;
		
		int[] s1={2, 11 ,20 ,29 ,38 ,47, 56, 65};
		int[] s2={3 ,12, 21, 30, 39, 48, 57, 66};
		int[] s3={4, 13, 22, 31, 40, 49, 58, 67};
		int[] s4={5, 14, 23, 32, 41, 50, 59, 68};
		int[] s5={1, 10, 19, 28, 37, 46, 55, 64};
		int[] s6={8, 17, 26, 35, 44, 53, 62, 71};
		int[] s7={9, 18, 27, 36, 45, 54, 63, 72};
		int[] s8={7, 16, 25, 34, 43, 52, 61, 70};
		int[] s9={6, 15, 24, 33, 42, 51, 60, 69};
		
		if(T(s1,num)){
			result =  "你是一个喜欢给予并很会制造气氛的人，和你在一起的人通常会有一种被温柔所 包围的感觉。而且你很有做家务的天份是一个很贤惠，很温柔的人。<br>" ;
		}

		if(T(s2,num)){
			result =  "你全身都散发着中性的魅力，是一个很有才华的人，有时也很麻烦，因为你根本 没有耐心。当然你的运动方面与众不同，好好发挥，一定有突破。" ;
		}
		if(T(s3,num)){
			result =  "做事都十分认真。基本上不会有脾气，性格稳定。在理财方面有自己的一套，天 生理财专家。你对金钱有一种独特的敏感度。 <br>" ;
		}
		if(T(s4,num)){
			result =   "你如风一样自由。头脑灵活，有很多表现才华的机会。你是一个很会讲话的人， 拥有经商细胞，向这方面发展一定会成功。" ;
		}
		if(T(s5,num)){
			result =   "如阳光般明媚的你，精力充沛，这也是你个性中的发亮点。你很喜欢花哨的东西， 个性鲜明，总会涌现出稀奇古怪的点子。但是对你喜欢的事物，会采取永不放弃的精神。<br>" ;
		}
		if(T(s6,num)){
			result =   "你有勇敢面对现实的精神，无论在任何困难面前都永不退缩，你还有领导的才能。<br>" ;
		}
		if(T(s7,num)){
			result =   "你就如同火一样是一个充满热情的人，你拥有一颗不愿输给任何人的火热的心。这样的你是一个对事物很容易产生感情的人，但重要的是找准一个目标，也就是找你最感兴趣的事去做。另外，你是一个在艺术方面很有才华的人，无论是绘画还是写作，你都能咋显独特的个人才华。<br>" ;
		}
		if(T(s8,num)){
			result =   "你浑身充满神秘色彩，如月亮一样呈现多种姿态。性格与众不同，最引人注目的 是你的时髦装扮。你的第六感很灵。<br>" ;
		}
		if(T(s9,num)){
			result =   "你如同花一样美丽，很爱打扮。喜欢研究好看的东西。你对美有很强的判断力。 你喜欢接触美丽的东西，将来向这方面发展哦！  <br>" ;
		}
		
		

		
		return result;

	}
	
	
	public static boolean T(int[] arr, int target) {   
	    return ArrayUtils.contains(arr,target);
	}
	
	

}
