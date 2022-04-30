<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div id="defect" > 
	<div class="defect_top"  id="menu" >
    <a href="/index.do" >首页</a>
<!--  	<a href="/name/portal.do" >榜上有名 </a>
	<a href="/name/nameword/index.do"  >名字世界</a>
	<a href="/name/12sx/index.do"  >十二生肖</a>
	<a href="/name/wnl/index.do"  >万年历</a>
	<a href="/name/scbz/index.do"  >生辰八字</a>
	<a href="/name/test/index.do"  >趣味测试</a>
	<a href="/name/sexz/index.do"  >十二星座</a>
	<a href="/name/xuexing/index.do"  >血型性格</a>
	<a href="/name/xiangxue/index.do"  >相学知识</a>
	<a href="/name/czsh/index.do"  >抽占算合</a>
	<a href="/name/suanming/index.do"  >免费算命</a>
	<a href="/name/divine/index.do"  >抽签占卜</a>
	<a href="/name/hehun/index.do"  >缘分合婚</a>
	<a href="/name/zgjm/index.do"  >周公解梦</a>
	<a href="/name/minsu/index.do"  >传统民俗</a>
	<a href="/name/number/index.do"  >号码凶吉</a>
	-->
	<c:if test="${site.singleitem =='100'}"> <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a></c:if>
	<c:if test="${site.singleitem =='200'}"> <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a></c:if>
	<c:forEach items="${menuList}" var="a" varStatus="status"><a href="/${a.item_directorie}/${a.catedirectory}/index.do">${a.catename}</a></c:forEach>
	<a href="/name/topic.do">专题</a>
	<a href="/name/tag/index.do">tag标签</a>
	<a href="/sitemap.do" >站点导航</a>
	</div>
 </div>