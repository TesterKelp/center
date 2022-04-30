//package com.testsystem.name.bz1.jx;
//
///*
// * 简单的看日子星宿实现
// *@author luozhuang 大师♂罗莊
// */
//
// 
//import java.text.ParseException;
//
//import com.testsystem.name.bz.xingsu.LuozhuangdayselcetCommon;
//
// 
///**
// *
// * @author luozhuang 大师♂罗莊
// */
//public class luozhuangxinxiu {
// 
////    	正月	二月	三月	四月	五月	六月	七月	八月	九月	十月	十一月	十二月
////1日	室宿	奎宿	胄宿	毕宿	参宿	鬼宿	张宿	角宿	氐宿	心宿	斗宿	虚宿
////2日	壁宿	娄宿	昂宿	觜宿	井宿	柳宿	翼宿	亢宿	房宿	尾宿	女宿	危宿
////3日	奎宿	胄宿	毕宿	参宿	鬼宿	星宿	轸宿	氐宿	心宿	箕宿	虚宿	室宿
////4日	娄宿	昂宿	觜宿	井宿	柳宿	张宿	角宿	房宿	尾宿	斗宿	危宿	壁宿
////5日	胄宿	毕宿	参宿	鬼宿	星宿	翼宿	亢宿	心宿	箕宿	女宿	室宿	奎宿
////6日	昂宿	觜宿	井宿	柳宿	张宿	轸宿	氐宿	尾宿	斗宿	虚宿	壁宿	娄宿
////7日	毕宿	参宿	鬼宿	星宿	翼宿	角宿	房宿	箕宿	女宿	危宿	奎宿	胄宿
////8日	觜宿	井宿	柳宿	张宿	轸宿	亢宿	心宿	斗宿	虚宿	室宿	娄宿	昂宿
////9日	参宿	鬼宿	星宿	翼宿	角宿	氐宿	尾宿	女宿	危宿	壁宿	胄宿	毕宿
////10日	井宿	柳宿	张宿	轸宿	亢宿	房宿	箕宿	虚宿	室宿	奎宿	昂宿	觜宿
////11日	鬼宿	星宿	翼宿	角宿	氐宿	心宿	斗宿	危宿	壁宿	娄宿	毕宿	参宿
////12日	柳宿	张宿	轸宿	亢宿	房宿	尾宿	女宿	室宿	奎宿	胄宿	觜宿	井宿
////13日	星宿	翼宿	角宿	氐宿	心宿	箕宿	虚宿	壁宿	娄宿	昂宿	参宿	鬼宿
////14日	张宿	轸宿	亢宿	房宿	尾宿	斗宿	危宿	奎宿	胄宿	毕宿	井宿	柳宿
////15日	翼宿	角宿	氐宿	心宿	箕宿	女宿	室宿	娄宿	昂宿	觜宿	鬼宿	星宿
////16日	轸宿	亢宿	房宿	尾宿	斗宿	虚宿	壁宿	胄宿	毕宿	参宿	柳宿	张宿
////17日	角宿	氐宿	心宿	箕宿	女宿	危宿	奎宿	昂宿	觜宿	井宿	星宿	翼宿
////18日	亢宿	房宿	尾宿	斗宿	虚宿	室宿	娄宿	毕宿	参宿	鬼宿	张宿	轸宿
////19日	氐宿	心宿	箕宿	女宿	危宿	壁宿	胄宿	觜宿	井宿	柳宿	翼宿	角宿
////20日	房宿	尾宿	斗宿	虚宿	室宿	奎宿	昂宿	参宿	鬼宿	星宿	轸宿	亢宿
////21日	心宿	箕宿	女宿	危宿	壁宿	娄宿	毕宿	井宿	柳宿	张宿	角宿	氐宿
////22日	尾宿	斗宿	虚宿	室宿	奎宿	胄宿	觜宿	鬼宿	星宿	翼宿	亢宿	房宿
////23日	箕宿	女宿	危宿	壁宿	娄宿	昂宿	参宿	柳宿	张宿	轸宿	氐宿	心宿
////24日	斗宿	虚宿	室宿	奎宿	胄宿	毕宿	井宿	星宿	翼宿	角宿	房宿	尾宿
////25日	女宿	危宿	壁宿	娄宿	昂宿	觜宿	鬼宿	张宿	轸宿	亢宿	心宿	箕宿
////26日	虚宿	室宿	奎宿	胄宿	毕宿	参宿	柳宿	翼宿	角宿	氐宿	尾宿	斗宿
////27日	危宿	壁宿	娄宿	昂宿	觜宿	井宿	星宿	轸宿	亢宿	房宿	箕宿	女宿
////28日	室宿	奎宿	胄宿	毕宿	参宿	鬼宿	张宿	角宿	氐宿	心宿	斗宿	虚宿
////29日	壁宿	娄宿	昂宿	觜宿	井宿	柳宿	翼宿	亢宿	房宿	尾宿	女宿	危宿
////30日	奎宿	胄宿	毕宿	参宿	鬼宿	星宿	轸宿	氐宿	心宿	箕宿	虚宿	室宿
//    public String xinxiu[][] = {{"", "正月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"},
//        {"1日", "室", "奎", "胄", "毕", "参", "鬼", "张", "角", "氐", "心", "斗", "虚"},
//        {"2日", "壁", "娄", "昂", "觜", "井", "柳", "翼", "亢", "房", "尾", "女", "危"},
//        {"3日", "奎", "胄", "毕", "参", "鬼", "星", "轸", "氐", "心", "箕", "虚", "室"},
//        {"4日", "娄", "昂", "觜", "井", "柳", "张", "角", "房", "尾", "斗", "危", "壁"},
//        {"5日", "胄", "毕", "参", "鬼", "星", "翼", "亢", "心", "箕", "女", "室", "奎"},
//        {"6日", "昂", "觜", "井", "柳", "张", "轸", "氐", "尾", "斗", "虚", "壁", "娄"},
//        {"7日", "毕", "参", "鬼", "星", "翼", "角", "房", "箕", "女", "危", "奎", "胄"},
//        {"8日", "觜", "井", "柳", "张", "轸", "亢", "心", "斗", "虚", "室", "娄", "昂"},
//        {"9日", "参", "鬼", "星", "翼", "角", "氐", "尾", "女", "危", "壁", "胄", "毕"},
//        {"10日", "井", "柳", "张", "轸", "亢", "房", "箕", "虚", "室", "奎", "昂", "觜"},
//        {"11日", "鬼", "星", "翼", "角", "氐", "心", "斗", "危", "壁", "娄", "毕", "参"},
//        {"12日", "柳", "张", "轸", "亢", "房", "尾", "女", "室", "奎", "胄", "觜", "井"},
//        {"13日", "星", "翼", "角", "氐", "心", "箕", "虚", "壁", "娄", "昂", "参", "鬼"},
//        {"14日", "张", "轸", "亢", "房", "尾", "斗", "危", "奎", "胄", "毕", "井", "柳"},
//        {"15日", "翼", "角", "氐", "心", "箕", "女", "室", "娄", "昂", "觜", "鬼", "星"},
//        {"16日", "轸", "亢", "房", "尾", "斗", "虚", "壁", "胄", "毕", "参", "柳", "张"},
//        {"17日", "角", "氐", "心", "箕", "女", "危", "奎", "昂", "觜", "井", "星", "翼"},
//        {"18日", "亢", "房", "尾", "斗", "虚", "室", "娄", "毕", "参", "鬼", "张", "轸"},
//        {"19日", "氐", "心", "箕", "女", "危", "壁", "胄", "觜", "井", "柳", "翼", "角"},
//        {"20日", "房", "尾", "斗", "虚", "室", "奎", "昂", "参", "鬼", "星", "轸", "亢"},
//        {"21日", "心", "箕", "女", "危", "壁", "娄", "毕", "井", "柳", "张", "角", "氐"},
//        {"22日", "尾", "斗", "虚", "室", "奎", "胄", "觜", "鬼", "星", "翼", "亢", "房"},
//        {"23日", "箕", "女", "危", "壁", "娄", "昂", "参", "柳", "张", "轸", "氐", "心"},
//        {"24日", "斗", "虚", "室", "奎", "胄", "毕", "井", "星", "翼", "角", "房", "尾"},
//        {"25日", "女", "危", "壁", "娄", "昂", "觜", "鬼", "张", "轸", "亢", "心", "箕"},
//        {"26日", "虚", "室", "奎", "胄", "毕", "参", "柳", "翼", "角", "氐", "尾", "斗"},
//        {"27日", "危", "壁", "娄", "昂", "觜", "井", "星", "轸", "亢", "房", "箕", "女"},
//        {"28日", "室", "奎", "胄", "毕", "参", "鬼", "张", "角", "氐", "心", "斗", "虚"},
//        {"29日", "壁", "娄", "昂", "觜", "井", "柳", "翼", "亢", "房", "尾", "女", "危"},
//        {"30日", "奎", "胄", "毕", "参", "鬼", "星", "轸", "氐", "心", "箕", "虚", "室"}};
//    luozhuangjiandanxuanri my = new luozhuangjiandanxuanri();
// 
//    void test(BaiziRecord cal) {
//        int intChinesemonth = cal.lunaryue.getLunarMonth();
//        int intChineseday = cal.lunaryue.getLunarDay();
//        my.println("今天星宿");
//        String shierjianstring = xinxiu[intChineseday][intChinesemonth];
//        my.println(shierjianstring);
//        my.println("今天年月日星宿释义");
//        my.println(LuozhuangdayselcetCommon.getchangshi("年占" + cal.getGanziyear(), cal.getganzhiString()));
//        my.println(LuozhuangdayselcetCommon.getchangshi("月占" + cal.getganzhiString()[4], cal.getganzhiString()));
//        my.println(LuozhuangdayselcetCommon.getchangshi("日占" + shierjianstring, cal.getganzhiString()));
//        my.println("今日星宿预测算命");
//        my.println(LuozhuangdayselcetCommon.getchangshi(shierjianstring + "宿"));
//    }
// 
//    public static void main(String[] args) throws ParseException {
//        String[] gua = {"角", "亢", "氐", "房", "心", "尾", "箕", "斗", "牛", "女", "虚", "危", "室", "壁", "奎", "娄", "胄", "昴", "毕", "觜", "参", "井", "鬼", "柳", "星", "张", "翼", "轸"};
//        for (int i = 0; i < gua.length; i++) {
//            String result = LuozhuangdayselcetCommon.getchangshi(gua[i] + "宿");
//            if (result == null) {
//                i++;
//            }
//        }
//        luozhuangxinxiu myluozhuangxinxiu = new luozhuangxinxiu();
//        luozhuangjiandanxuanri myluozhuangjiandanxuanri = new luozhuangjiandanxuanri();
//        myluozhuangxinxiu.test(myluozhuangjiandanxuanri.getbazi("2013-8-21"));
//        
//    }
//}
