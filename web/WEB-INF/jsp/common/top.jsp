<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="top">
	<div class="top_body">
		<div class="top_left fl">欢迎光临“进错门”二手交易平台！</div>
		<div class="top_right fl">
			<c:choose>
				<c:when test="${sessionScope.user==null}">
					<div class="top_right_item fr">
						<a href="/TradingPlatform/user/register"><span class="red">[注册]</span></a>
					</div>
					<div class="top_right_item fr">
						<a href="/TradingPlatform/user/login"><span class="blue">[登录]</span></a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="top_right_item fr">
						<a href="/TradingPlatform/user/userLoginOut"><span>注销</span></a>
					</div>
					<div class="top_right_item fr" style="padding: 10px 0 6px 0;margin: 0;">
						<a href="/TradingPlatform/user/userLoginOut"><img src="images/loginOut.png" width="15"></a>
					</div>
					<div class="top_right_item fr">|</div>
					<div class="top_right_item fr">
						<a href="/TradingPlatform/goods/me-order/1"><span>我的订单</span></a>
					</div>
					<div class="top_right_item fr" style="margin: 0;">
						<a href="/TradingPlatform/goods/me-order/1"><img src="images/order.png" width="16"></a>
					</div>
					<div class="top_right_item fr">|</div>
					<div class="top_right_item fr">
						<a href="/TradingPlatform/goods/me-collection/1"><span>我的收藏</span></a>
					</div>
					<div class="top_right_item fr" style="padding: 9px 0 7px 0;margin: 0;">
						<a href="/TradingPlatform/goods/me-collection/1"><img src="images/collection.png" width="15"></a>
					</div>
					<div class="top_right_item fr">|</div>
					<div class="top_right_item fr">
						<a href="/TradingPlatform/goods/me-goods/1"><span>我的商品</span></a>
					</div>
					<div class="top_right_item fr" style="margin: 0;">
						<a href="/TradingPlatform/goods/me-goods/1"><img src="images/order.png" width="16"></a>
					</div>
					<div class="top_right_item fr">|</div>
					<div class="top_right_item fr">
						<a href="/TradingPlatform/user/userInfo/${sessionScope.user.userId}"><span>个人信息</span></a>
					</div>
					<div class="top_right_item fr" style="padding: 9px 0 7px 0;margin: 0;">
						<a href="/TradingPlatform/user/userInfo"><img src="images/userInfo.png" width="15"></a>
					</div>
					<div class="top_right_item fr">|</div>
					<div class="top_right_item fr" style="margin-right: 10px;">
						欢迎你：
						<span class="red">${sessionScope.user.userDetail.nickname }</span>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
