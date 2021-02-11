<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>

<div class="head-show-single">
	<div class="head-show-single-body">
		<div class="head-show-single-left fl">
			<span class="left">我的信息</span>
		</div>
		<div class="head-show-single-right fl">
			<div class="head-show-single-right-item fl">
				<a href="/TradingPlatform/goods/all/recent/1">
				<img src="images/home.png" width="16">
				<span class="right">首页</span></a>
			</div>
			<div class="head-show-single-right-jianGe fl">
				<span class="right">|</span>
			</div>
			<div class="head-show-single-right-item fl">
				<a href="/TradingPlatform/user/userInfo/${sessionScope.user.userId}"><span class="right">个人信息</span></a>
			</div>
			<div class="head-show-single-right-jianGe fl">
				<span class="right">|</span>
			</div>
			<div class="head-show-single-right-item fl">
				<a href="/TradingPlatform/goods/me-goods/1"><span class="right">我的商品</span></a>
			</div>
			<div class="head-show-single-right-jianGe fl">
				<span class="right">|</span>
			</div>
			<div class="head-show-single-right-item fl">
				<a href="/TradingPlatform/goods/me-collection/1"><span class="right">我的收藏</span></a>
			</div>
			<div class="head-show-single-right-jianGe fl">
				<span class="right">|</span>
			</div>
			<div class="head-show-single-right-item fl">
				<a href="/TradingPlatform/goods/me-order/1"><span class="right">我的订单</span></a>
			</div>
		</div>
	</div>
</div>
