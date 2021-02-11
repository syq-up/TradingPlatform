<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录</title>
	<base href="/TradingPlatform/" />
	<link href="css/log_reg_1.css" rel="stylesheet" type="text/css">
	<link href="css/log_reg_2.css" rel="stylesheet" type="text/css">
	<link href="css/log_reg_3.css" rel="stylesheet" type="text/css">
	<link href="css/log_reg_4.css" rel="stylesheet" type="text/css">
</head>
<body class="templatemo-bg-gray">
	<%if (session.getAttribute("user") != null){
		response.sendRedirect("../goods/all");
		return;
	}%>
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">二手交易平台</h1>
			<form style="padding-top: 15px;" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" action="${pageContext.request.contextPath}/user/useLogin" method="post">
				<div class="form-group">
					<div style="padding-bottom: 10px; font-size: 24px; text-align: center; color: #4aa4b4; border-bottom: 1px solid #eee;" class="col-xs-12">登录
					<c:if test="${sessionScope.user.userDetail != null}">${sessionScope.user.userDetail.nickname}</c:if>
					</div>
				</div>
				<div class="form-group margin-bottom-0">
					<div class="col-xs-12">
						<div class="control-wrapper">
							<label for="userName" class="control-label fa-label"><img width="21" src="images/login_user.png"/></label>
							<input id="userName" type="text" class="form-control" name="userName" placeholder="用户名" required>
						</div>
					</div>
				</div>
				<div class="form-group margin-bottom-15">
					<div class="col-xs-12">
						<c:if test="${msg1!=null}">
							<span class="span-error">${msg1}</span>
						</c:if>
					</div>
				</div>
				<div class="form-group margin-bottom-0">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="userPwd" class="control-label fa-label"><img width="24" src="images/login_pwd.png"/></label>
							<input id="userPwd" type="password" class="form-control" name="userPwd" placeholder="密码" required>
						</div>
					</div>
				</div>
				<div class="form-group margin-bottom-15">
					<div class="col-xs-12">
						<c:if test="${msg2!=null}">
							<span class="span-error">${msg2}</span>
						</c:if>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="remember" class="control-label fa-label"><img width="23" src="images/login_rem.png"/></label>
							<div style="float: left; height: 30px; padding-top: 4px;">
								记住密码？
								<select id="remember" name="remember" class="select">
									<option value="0">不保存</option>
									<option value="1">一天</option>
									<option value="2">一周</option>
									<option value="3">一个月</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<input type="submit" value="登录" class="btn btn-info">
							<div style="float: right;">
								还没有帐号？<a style="color: #09F;" href="/TradingPlatform/user/register">马上注册</a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>