<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
	<title>二手交易平台</title>
	<base href="/TradingPlatform/" />
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/show-single.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="common/top.jsp"%>

	<div class="head-show-single">
		<div class="head-show-single-body">
			<div class="head-show-single-left fl">
				<span class="left">二手交易平台</span>
			</div>
			<div class="head-show-single-right fl">
				<div class="head-show-single-right-item fl">
					<a href="/TradingPlatform/goods/all/recent/1"><span class="right">首页</span></a>
				</div>
				<div class="head-show-single-right-jianGe fl">
					<span class="right">|</span>
				</div>
				<div class="head-show-single-right-item fl">
					<a href="/TradingPlatform/goods/me-goods/1"><span class="right">我的商品</span></a>
				</div>
				<div class="head-show-single-right-item fl">
					<a href="/TradingPlatform/goods/add"><span class="right">发布商品</span></a>
				</div>
			</div>
			<div class="search fr" style="margin: 27px 0;">
				<form action="" method="post">
					<input class="search-input fl" name="goodsName">
					<input type="submit" value="搜索" class="search-button fr">
				</form>
			</div>
		</div>
	</div>

	<div class="goods-detail">
		<div class="goods-detail-top">
			<div class="goods-detail-top-left fl">
				<div class="goods-detail-top-left_img fl">
					<img style="border-radius:50%;" src="images/info/headImg.jpg" width="30" height="30">
				</div>
				<div class="goods-detail-top-left-name fl">
					<span class="name">${goods.userDetail.nickname}</span>
				</div>
			</div>
			<div class="goods-detail-top-right fl">
				<span class="right1">商品浏览次数：</span>
				<span class="right2">55</span>
				&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="right1">最后编辑时间：</span>
				<span class="right2">${goods.lastEditTime}</span>
			</div>
		</div>

		<div class="goods-detail-left fl">
			<div class="goods-detail-img fl" style="text-align: center;">
				<img style="max-width: 690px; max-height: 580px;" src="upload/${goods.goodsImg}"/>
			</div>
			<div class="goods-detail-messages fl">
				<div class="goods-detail-messages-top">留言板</div>
				<div class="goods-detail-messages-content" >
					<c:if test="${msgList == null}">
						什么都没有呢X﹏X
					</c:if>

					<c:forEach var="msgItem" items="${msgList}">
						<div class="goods-detail-messages-item">
							<div class="goods-detail-messages-name fl">
								<c:choose>
									<c:when test="${msgItem.userNickname.equals(goods.userDetail.nickname)}">
										<span style="color: #ffd84d;">[主人留言]：</span>
									</c:when>
									<c:otherwise>
										${msgItem.userNickname}：
									</c:otherwise>
								</c:choose>
							</div>
							<div class="goods-detail-messages-msg fl">
								${msgItem.message}<br/>
								<span class="date">${msgItem.datetime}</span>
							</div>
						</div>
					</c:forEach>
				</div>
				<form action="" method="post">
					<input name="goodsId" value="${goods.goodsId}" hidden>
					<input name="userNickname" value="${sessionScope.user.userDetail.nickname}" hidden>
					<input class="goods-detail-messages-input" name="message"
						required maxlength="30" pattern="^[\u4E00-\u9FA5A-Za-z0-9_]+$">
					<input class="button goods-detail-messages-button" type="submit" value="留言">
					<div style="font-size: 14px;">
						*请输入不大与30字符的中文、英文、数字或下划线
					</div>
				</form>
			</div>
		</div>
		<div class="goods-detail-right fl">
			<div class="goods-detail-info fl">
				<div class="goods-detail-info-title fl">
					<span class="title">${goods.goodsName}</span>
				</div>

				<div class="goods-detail-info-key fl">
					<span class="key">转&nbsp;卖&nbsp;价：</span>
				</div>
				<div class="goods-detail-info-value fl">
					<span class="value">${goods.newPrice}</span>
				</div>

				<div class="goods-detail-info-key fl">
					<span class="key">原&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</span>
				</div>
				<div class="goods-detail-info-value fl">
					<c:choose>
						<c:when test="${goods.newPrice == null}">
							无
						</c:when>
						<c:otherwise>
							￥<span class="key">${goods.oldPrice}</span>
						</c:otherwise>
					</c:choose>
				</div>

				<div class="goods-detail-jiange fl"></div>

				<div class="goods-detail-info-key fl">
					<span class="key">成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</span>
				</div>
				<div class="goods-detail-info-value fl">
					<span class="key">${goods.quality}</span>
				</div>

				<div class="goods-detail-info-key fl">
					<span class="key">所&nbsp;在&nbsp;地：</span>
				</div>
				<div class="goods-detail-info-value fl">
					<span class="key">${goods.userDetail.curAddr.province}${goods.userDetail.curAddr.county}</span>
				</div>

				<div class="goods-detail-info-key fl">
					<span class="key">联系方式：</span>
				</div>
				<div class="goods-detail-info-value fl">
					<span class="key">${goods.userDetail.phone}</span>
				</div>

				<div class="goods-detail-info-key fl">
					<span class="key">交易方式：</span>
				</div>
				<div class="goods-detail-info-value fl">
					<span class="key">${goods.tradeWay}</span>
				</div>
				<div class="goods-detail-info-button fl">
					<form action="/TradingPlatform/${goods.goodsId}" method="post">
						<input type="submit" class="button button-buy" value="立即购买">
					</form>
					<form action="/TradingPlatform/goods/me-collection/save" method="post">
						<input name="userId" value="${sessionScope.user.userId}" hidden>
						<input name="goodsId" value="${goods.goodsId}" hidden>
						<input type="submit" class="button button-collect" value="收藏">
					</form>
					<c:if test="${msg!=null}">${msg}</c:if>
				</div>
			</div>

			<div class="goods-detail-intro fl">
				<div class="goods-detail-intro-top">商品详情</div>
				<div class="goods-detail-intro-content">
					${goods.goodsName}；<br/><br/>${goods.goodsDetail}
				</div>
			</div>
		</div>
	</div>

	<%@ include file="common/foot.jsp"%>
</body>
</html>
