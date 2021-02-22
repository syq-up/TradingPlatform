<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>校园二手交易平台</title>
	<base href="/TradingPlatform/" />
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/show-all.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="common/top.jsp"%>

	<%--head--%>
	<div class="head-show-all">
		<div class="head-show-all_body">
			<div class="head-show-all_top">
				<div class="head-show-all_top_left"><span class="left">二手交易平台</span></div>
				<div class="head-show-all_top_right">
					<div class="head-show-all_top_right_item fl">
						<a href="/TradingPlatform/goods/all/recent/1"><span class="right1">首页</span></a>
					</div>
					<div class="head-show-all_top_right_item fl">
						<a href="/TradingPlatform/goods/me-goods/1"><span class="right2">我的商品</span></a>
					</div>
					<div class="head-show-all_top_right_item fl">
						<a href="/TradingPlatform/goods/add"><span class="right2">发布商品</span></a>
					</div>
				</div>
			</div>
			<div class="head-show-all_img1"><img src="images/welcome1.png" width="170"></div>
			<div class="head-show-all_img2"><img src="images/welcome2.png" width="170"></div>
			<div class="head-show-all_img3"><img src="images/welcome3.png" width="176"></div>

			<div class="search" style="position: absolute; top: 70px; right: 0;">
				<form action="" method="post">
					<input class="search-input fl" name="goodsName">
					<input type="submit" value="搜索" class="search-button fr">
				</form>
			</div>

			<div class="usercard">
				<c:if test="${sessionScope.user != null}">
					<div class="usercard-info">
						<div class="usercard-info-left">
							<img style="width: 60px; height: 60px; border-radius:50%;" src="upload/${sessionScope.user.userDetail.headImg}">
						</div>
						<% org.shiyq.pojo.User u =(org.shiyq.pojo.User)session.getAttribute("user");
							int days = (int)(new java.util.Date().getTime() - u.getUserReg().getTime())/1000/3600/24 + 1;
						%>
						<div class="usercard-info-right">
							<p><span class="right1"><b>${sessionScope.user.userDetail.nickname}</b></span></p>
							<p><span class="right2">已经来到这里&nbsp;<%=days%>&nbsp;天啦！(ง •_•)ง</span></p>
						</div>
					</div>
					<div class="usercard-list">
						<div class="usercard-list-item fl" onclick="window.open('/TradingPlatform/goods/me-goods/1','_self')">
							<div class="usercard-list-item-img"><img src="images/info/1.png" width="26"></div>
							<div class="usercard-list-item-name"><span class="name">出售中</span></div>
							<div class="usercard-list-item-num">
								<span class="num">${sessionScope.user.userDetail.sellingCount}</span>
							</div>
						</div>
						<div class="usercard-list-item fl" onclick="window.open('/TradingPlatform/goods/me-goods/1','_self')">
							<div class="usercard-list-item-img"><img src="images/info/2.png" width="26"></div>
							<div class="usercard-list-item-name"><span class="name">已卖出</span></div>
							<div class="usercard-list-item-num">
								<span class="num">${sessionScope.user.userDetail.soldCount}</span>
							</div>
						</div>
						<div class="usercard-list-item fl" onclick="window.open('/TradingPlatform/findOrder','_self')">
							<div class="usercard-list-item-img"><img src="images/info/3.png" width="26"></div>
							<div class="usercard-list-item-name"><span class="name">已买入</span></div>
							<div class="usercard-list-item-num">
								<span class="num">${sessionScope.user.userDetail.buyCount}</span>
							</div>
						</div>
						<div class="usercard-list-item fl" onclick="window.open('/TradingPlatform/goods/me-collection/1','_self')">
							<div class="usercard-list-item-img"><img src="images/info/4.png" width="26"></div>
							<div class="usercard-list-item-name"><span class="name">我的收藏</span></div>
							<div class="usercard-list-item-num">
								<span class="num">${sessionScope.user.userDetail.collectCount}</span>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${sessionScope.user == null}">
					<div class="usercard-info" style="padding-top: 30px;">
						<img style="border-radius:50%; width: 60px; height: 60px; border: 1px solid #000;" src="images/info/headImg2.jpg">
					</div>
					<div class="usercard-list" style="padding: 35px 5px 15px 5px;">
						<a href="/TradingPlatform/user/login"><button class="button" style="width: 88px; height: 25px; background-color: #ffd84d;">登录</button></a>
						<br/><br/>
						<a href="/TradingPlatform/user/register">立即注册</a>
					</div>
				</c:if>
			</div>
		</div>
	</div>

	<%--TODO 根据查询的分类改变导航栏样式--%>
	<%--<script type="text/javascript">
		&lt;%&ndash;怎么才能实现使用js改变样式？&ndash;%&gt;

		&lt;%&ndash;window.onload = function (){&ndash;%&gt;
		&lt;%&ndash;var navi_item = document.getElementById("navi-"+${sort});&ndash;%&gt;
		&lt;%&ndash;navi_item.className = "navi-item-i fl";&ndash;%&gt;

		&lt;%&ndash;var navi_item_line = document.createElement("div");&ndash;%&gt;
		&lt;%&ndash;navi_item_line.className = "navi-item-line";&ndash;%&gt;

		&lt;%&ndash;navi_item.appendChild(navi_item_line)&ndash;%&gt;


		&lt;%&ndash;document.onreadystatechange = function (){&ndash;%&gt;
		&lt;%&ndash;	if (document.readyState != "complete"){&ndash;%&gt;
		&lt;%&ndash;		alert(${sort});&ndash;%&gt;
		&lt;%&ndash;	}&ndash;%&gt;
		&lt;%&ndash;}&ndash;%&gt;
	</script>--%>

	<%--导航栏--%>
	<div class="navi">
		<div id="navi-recent" class="navi-item<c:if test="${sort=='recent'}">-i</c:if> fl" class="navi-item fl" >
			<a href="/TradingPlatform/goods/all/recent/1"><span class="name<c:if test="${sort=='recent'}">-i</c:if>">最近</span></a>
			<c:if test="${sort=='recent'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-phone" class="navi-item<c:if test="${sort=='phone'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/phone/1"><span class="name<c:if test="${sort=='phone'}">-i</c:if>">手机</span></a>
			<c:if test="${sort=='phone'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-digital" class="navi-item<c:if test="${sort=='digital'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/digital/1"><span class="name<c:if test="${sort=='digital'}">-i</c:if>">数码</span></a>
			<c:if test="${sort=='digital'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-ACG" class="navi-item<c:if test="${sort=='ACG'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/ACG/1"><span class="name<c:if test="${sort=='ACG'}">-i</c:if>">ACG</span></a>
			<c:if test="${sort=='ACG'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-clothes" class="navi-item<c:if test="${sort=='clothes'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/clothes/1"><span class="name<c:if test="${sort=='clothes'}">-i</c:if>">服装</span></a>
			<c:if test="${sort=='clothes'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-house" class="navi-item<c:if test="${sort=='house'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/house/1"><span class="name<c:if test="${sort=='house'}">-i</c:if>">租房</span></a>
			<c:if test="${sort=='house'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-makeup" class="navi-item<c:if test="${sort=='makeup'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/makeup/1"><span class="name<c:if test="${sort=='makeup'}">-i</c:if>">美妆</span></a>
			<c:if test="${sort=='makeup'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-sport" class="navi-item<c:if test="${sort=='sport'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/sport/1"><span class="name<c:if test="${sort=='sport'}">-i</c:if>">运动</span></a>
			<c:if test="${sort=='sport'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-game" class="navi-item<c:if test="${sort=='game'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/game/1"><span class="name<c:if test="${sort=='game'}">-i</c:if>">游戏</span></a>
			<c:if test="${sort=='game'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-instrument" class="navi-item<c:if test="${sort=='instrument'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/instrument/1"><span class="name<c:if test="${sort=='instrument'}">-i</c:if>">乐器</span></a>
			<c:if test="${sort=='instrument'}"><div class="navi-item-line"></div></c:if>
		</div>
		<div id="navi-other" class="navi-item<c:if test="${sort=='other'}">-i</c:if> fl">
			<a href="/TradingPlatform/goods/all/other/1"><span class="name<c:if test="${sort=='other'}">-i</c:if>">其它</span></a>
			<c:if test="${sort=='other'}"><div class="navi-item-line"></div></c:if>
		</div>
	</div>

	<%--商品展示--%>
	<div class="show_all">
		<c:forEach var="goodsItem" items="${goodsList}">
			<div class="show_item fl">
				<div class="show_item_img">
					<a href="/TradingPlatform/goods/single/${goodsItem.goodsId}">
						<img width="215" src="upload/${goodsItem.goodsImg}"/>
					</a>
				</div>
				<div class="show_item_info">
					<p>
						<a href="/TradingPlatform/goods/single/${goodsItem.goodsId}">
							<span class="info">${goodsItem.goodsName}</span>
						</a>
					</p>
				</div>
				<div class="show_item_money">
					<p>
						<span class="money">￥${goodsItem.newPrice}</span>
					</p>
				</div>
				<div class="show_item_user">
					<div class="show_item_user_img fl">
						<img style="width: 20px; height: 20px; border-radius:50%;" src="upload/${goodsItem.userDetail.headImg}">
					</div>
					<div class="show_item_user_name fl">
						<span class="name">${goodsItem.userDetail.nickname}</span>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<%--页码--%>
	<div class="page">
		<c:if test="${totalPages>=1}">
			<%-- 页数较少时填充 --%>
			<c:if test="${totalPages < 8}">
				<c:forEach begin="1" end="${(9-totalPages)/2}">
					<div class="page-item fl bg-color-f2f2f2"></div>
				</c:forEach>
			</c:if>
			<%-- 上一页 --%>
			<div class="page-item fl bg-color-f2f2f2">
				<a href="/TradingPlatform/goods/${sort}/${pageNum-1}"><img alt="上一页" src="images/prevPage.png"></a>
			</div>
			<%-- 首页 --%>
			<div class="page-item fl <c:if test="${pageNum==1}">bg-color-ffd84d</c:if>">
				<a href="/TradingPlatform/goods/${sort}/1">1</a>
			</div>
			<%-- 页数过多时的省略号 --%>
			<c:if test="${totalPages > 9 && pageNum > 5}">
				<div class="page-item fl <c:if test="${pageNum == totalPages}">bg-color-ffd84d</c:if>">
					<img alt="省略" src="images/ellipsis.png"/>
				</div>
			</c:if>
			<%-- 中间部分的页面显示 --%>
			<c:choose>
				<c:when test="${totalPages<=9}">
					<c:forEach var="pagesNum" begin="2" end="${totalPages-1}">
						<div class="page-item fl <c:if test="${pagesNum==pageNum}">bg-color-ffd84d</c:if>">
							<a href="/TradingPlatform/goods/${sort}/${pagesNum}">${pagesNum}</a>
						</div>
					</c:forEach>
				</c:when>
				<c:when test="${totalPages > 9}">
					<c:choose>
						<c:when test="${pageNum <= 5}">
							<c:forEach var="pagesNum" begin="2" end="7">
								<div class="page-item fl <c:if test="${pagesNum==pageNum}">bg-color-ffd84d</c:if>">
									<a href="/TradingPlatform/goods/${sort}/${pagesNum}">${pagesNum}</a>
								</div>
							</c:forEach>
						</c:when>
						<c:when test="${pageNum >= (totalPages-4)}">
							<c:forEach var="pagesNum" begin="${totalPages-6}" end="${totalPages-1}">
								<div class="page-item fl <c:if test="${pagesNum==pageNum}">bg-color-ffd84d</c:if>">
									<a href="/TradingPlatform/goods/${sort}/${pagesNum}">${pagesNum}</a>
								</div>
							</c:forEach>
						</c:when>
						<c:when test="${pageNum>5 && pageNum < (totalPages-4)}">
							<c:forEach var="pagesNum" begin="${totalPages-6}" end="${totalPages-1}">
								<div class="page-item fl <c:if test="${pagesNum==pageNum}">bg-color-ffd84d</c:if>">
									<a href="/TradingPlatform/goods/${sort}/${pagesNum}">${pagesNum}</a>
								</div>
							</c:forEach>
						</c:when>
					</c:choose>
				</c:when>
			</c:choose>
			<%-- 页数过多时的省略号 --%>
			<c:if test="${totalPages > 9 && pageNum < (totalPages-4)}">
				<div class="page-item fl <c:if test="${pageNum == totalPages}">bg-color-ffd84d</c:if>">
					<img alt="省略" src="images/ellipsis.png"/>
				</div>
			</c:if>
			<%-- 尾页 --%>
			<c:if test="${totalPages > 1}">
				<div class="page-item fl <c:if test="${pageNum == totalPages}">bg-color-ffd84d</c:if>">
					<a href="/TradingPlatform/goods/${sort}/${totalPages}">${totalPages}</a>
				</div>
			</c:if>
			<%-- 下一页 --%>
			<div class="page-item fl bg-color-f2f2f2">
				<a href="/TradingPlatform/goods/${sort}/${pageNum+1}"><img alt="下一页" src="images/nextPage.png"/></a>
			</div>
			<%-- 页数较少时填充 --%>
			<c:if test="${totalPages < 9}">
				<c:forEach begin="1" end="${(9-totalPages)/2}">
					<div class="page-item fl bg-color-f2f2f2"></div>
				</c:forEach>
			</c:if>
		</c:if>
	</div>

	<%--foot--%>
	<%@ include file="common/foot.jsp"%>

</body>
</html>
