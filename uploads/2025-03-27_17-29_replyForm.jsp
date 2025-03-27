<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
content.jsp(ref,re_step,re_level) / replyProc.jsp에서 실패
=> replyForm.jsp(답,답답,답답답)<br>
<%@ include file="color.jsp"%>
<link rel="stylesheet" href="style.css">
<style>
	body{
		width : 100%;
		text-align : center;
	}
	table{
		margin : auto;
	}
</style>
<%
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));
	application.setAttribute("flag2", false);
%>
<body bgcolor="<%=bodyback_c%>">
	<form method="post" action="reply.bd">
		<input type="hidden" name="ref" value="<%=ref %>">
		<input type="hidden" name="re_step" value="<%=re_step %>">
		<input type="hidden" name="re_level" value="<%=re_level %>">
		<table bgcolor="<%=bodyback_c%>">
			<tr>
				<td colspan="2" align="right">
					<a href="select.bd">글목록</a>
				</td>
			</tr>
			<tr>
				<td bgcolor="<%=value_c %>" align="center">이 름</td> 
				<td><input type="text" name="writer"></td>
			<tr>
			<tr>
				<td bgcolor="<%=value_c %>" align="center">제 목</td>
				<td><input type="text" name="subject" value="[답변]"></td>
			<tr>
			<tr>
				<td bgcolor="<%=value_c %>" align="center">Email</td>
				<td><input type="text" name="email"></td>
			<tr>
			<tr>
				<td bgcolor="<%=value_c %>" align="center">내 용</td>
				<td><textarea name="content" rows="13" cols="50"></textarea></td>
			<tr>
			<tr>
				<td bgcolor="<%=value_c %>" align="center">비밀번호</td>
				<td><input type="password" name="passwd"></td>
			<tr>
			<tr>
				<td colspan="2" bgcolor="<%=value_c %>" align="center">
					<input type="submit" value="답글쓰기"> 
					<input type="reset" value="다시작성">
					<input type="button" value="목록보기"  onClick= "location.href = 'select.bd'">
				</td>
			</tr>
		</table>
	</form>
</body>