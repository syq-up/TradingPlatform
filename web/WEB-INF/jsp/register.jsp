<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>注册</title>
	<base href="/TradingPlatform/" />
	<link href="css/log_reg_1.css" rel="stylesheet" type="text/css">
	<link href="css/log_reg_2.css" rel="stylesheet" type="text/css">
	<link href="css/log_reg_3.css" rel="stylesheet" type="text/css">
	<link href="css/log_reg_4.css" rel="stylesheet" type="text/css">
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">二手交易平台</h1>
			<form style="padding-top: 15px;" class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" action="${pageContext.request.contextPath}/user/uerRegister" method="post">
				<div class="form-group">
					<div style="padding-bottom: 10px; font-size: 24px; text-align: center; color: #4aa4b4; border-bottom: 1px solid #eee;" class="col-xs-12">注册</div>
				</div>
				<div class="form-group margin-bottom-0">
					<div class="col-xs-12">
						<div class="control-wrapper">
							<label for="userName" class="control-label fa-label"><img width="21" src="images/login_user.png"/></label>
							<input id="username" type="text" class="form-control" name="userName" value="${userName}" placeholder="用户名" required>
						</div>
					</div>
				</div>
				<div class="form-group margin-bottom-15">
					<div class="col-xs-12">
						<c:if test="${msg_name!=null}">
							<span class="span-error">${msg_name}</span>
						</c:if>
					</div>
				</div>
				<div class="form-group margin-bottom-15">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="userPwd" class="control-label fa-label"><img width="24" src="images/login_pwd.png"/></label>
							<input id="userPwd" type="password" class="form-control" name="userPwd" value="${userPwd}" placeholder="密码" required>
						</div>
					</div>
				</div>
				<div class="form-group margin-bottom-0">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="rePwd" class="control-label fa-label"><img width="24" src="images/login_pwd.png"/></label>
							<input id="rePwd" type="password" class="form-control" name="rePwd" placeholder="确定密码" required>
						</div>
					</div>
				</div>
				<div class="form-group margin-bottom-15">
					<div class="col-xs-12">
						<c:if test="${msg_pwd!=null}">
							<span class="span-error">${msg_pwd}</span>
						</c:if>
					</div>
				</div>
				<div style="margin-bottom: 10px;" class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<input type="submit" value="注册" class="btn btn-info">
							<div style="float: right;">
								已有帐号？<a style="color: #09F;" href="/TradingPlatform/user/login">马上登录</a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>