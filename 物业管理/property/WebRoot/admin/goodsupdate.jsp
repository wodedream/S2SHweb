<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>管理</title>
		<jsp:include page="/admin/header.jsp" />

		<div class="templatemo-content-wrapper">
			<div class="templatemo-content">
				<ol class="breadcrumb">
					<li>
						<a href="admin/index.jsp">首页</a>
					</li>
					<li class="active">
						修改物业设备信息 
					</li>
				</ol>
				<div class="margin-bottom-30">
					<div class="row">
						<div class="col-md-12">
							<form action="goodsupdate" method="post" role="form" id="templatemo-preferences-form">
								<div class="row">
									<div class="col-md-6 margin-bottom-15">
										<label for="firstName" class="control-label">
											设备名称
										</label>
										<input type="text" name="goods.gname" class="form-control" id="firstName"
											value="${goods.gname}">
									</div>
									<div class="col-md-6 margin-bottom-15">
										<label for="lastName" class="control-label">
											价格
										</label>
										<input type="text" name="goods.gprice" class="form-control" id="lastName"
											value="${goods.gprice}">
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 margin-bottom-15">
										<label for="password_1">
											购买日期
										</label>
										<input type="text" name="goods.gdate" class="form-control" id="password_1"
											value="${goods.gdate}">
									</div>
									<div class="col-md-6 margin-bottom-15">
										<label for="password_2">
											使用情况
										</label>
										<input type="text" name="goods.gtype" class="form-control" id="password_2"
											value="${goods.gtype}">
											<input type="hidden" name="goods.gid" class="form-control" id="password_2"
											value="${goods.gid}">
									</div>
								</div>
								<div class="row templatemo-form-buttons">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary">
											提交
										</button>
										<button type="reset" class="btn btn-default">
											重置
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
		<jsp:include page="/admin/footer.jsp" />
		</body>
</html>
