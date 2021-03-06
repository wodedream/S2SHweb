<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
						物业费列表
					</li>
				</ol>
				<div class="margin-bottom-30">
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped table-hover table-bordered">
									<thead>
										<tr>
											<th>
												户主
											</th>
											<th>
												应缴纳物业费
											</th>
											<th>
												缴纳状态
											</th>
											<th>
												通知缴费时间
											</th>
											<th>
												操作
											</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<s:iterator value="#request.wuyeList" status="vs" var="s">
											<tr>
												<td>
													${s.uname}
												</td>
												<td>
													${s.wprice}
												</td>
												<td>
													${s.wtype}
												</td>
												<td>
													${s.wdate}
												</td>
												<td>
													<a href="adminwuyeToUpdate?wuye.wid=${s.wid}&wuye.uid=${s.uid}"
														class="btn btn-default">修改</a>
												</td>
												<td>
													<a href="wuyedelete?wuye.wid=${s.wid}"
														class="btn btn-default">删除</a>
												</td>
											</tr>
										</s:iterator>
									</tbody>
								</table>
							</div>
							<ul class="pagination pull-right">
								<li>
									<a href="javascript:void(0);">共${page.totalPage}页</a>
								</li>
								<s:if test="#request.page.hasPrePage">
									<li>
										<a href="userlist?currentPage=${page.currentPage -1 }">«</a>
									</li>
								</s:if>
								<s:else>
									<li>
										<a href="javascript:void(0);">«</a>
									</li>
								</s:else>
								<li>
									<a href="javascript:void(0);">第${page.currentPage}页 </a>
								</li>
								<s:if test="#request.page.hasNextPage">
									<li>
										<a href="userlist?currentPage=${page.currentPage + 1 }">»</a>
									</li>
								</s:if>
								<s:else>
									<li>
										<a href="javascript:void(0);">»</a>
									</li>
								</s:else>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
		<jsp:include page="/admin/footer.jsp" />
		</body>
</html>
