<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="board.dto.*"%>
<html>
<head>
	<title>글내용</title>
</head>
<%	BoardDBBean dto = (BoardDBBean)request.getAttribute("getBoard"); %>
<body>
<div align="center">
	<b>글내용 보기</b><br><br>
	<table border="1" width="600">
		<tr>
			<th bgcolor="yellow" width="20%">글번호</th>
			<td align="center"><%=dto.getNum()%></td>
			<th bgcolor="yellow" width="20%">조회수</th>
			<td align="center"><%=dto.getReadcount()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">작성자</th>
			<td align="center"><%=dto.getWriter()%></td>
			<th bgcolor="yellow" width="20%">작성일</th>
			<td align="center"><%=dto.getReg_date()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">글제목</th>
			<td align="left" colspan="3"><%=dto.getSubject()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">이메일</th>
			<td align="left" colspan="3"><%=dto.getEmail()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">글내용</th>
			<td align="left" colspan="3"><%=dto.getContent()%></td>
		</tr>
    	<tr>
			<td colspan="4" align="right" bgcolor="yellow">
				<input type="button" value="글수정" 
				onclick="window.location='board_updateForm.do?num=<%=dto.getNum()%>'" >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="글삭제" 
				onclick="window.location='board_deleteForm.do?num=<%=dto.getNum()%>'">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="글목록" 
				onclick="window.location='board_list.do'">
			</td>
		</tr> 
	</table>
</div>    



















