<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="board.dto.*"%>
<html>
<head>
	<title>�۳���</title>
</head>
<%	BoardDBBean dto = (BoardDBBean)request.getAttribute("getBoard"); %>
<body>
<div align="center">
	<b>�۳��� ����</b><br><br>
	<table border="1" width="600">
		<tr>
			<th bgcolor="yellow" width="20%">�۹�ȣ</th>
			<td align="center"><%=dto.getNum()%></td>
			<th bgcolor="yellow" width="20%">��ȸ��</th>
			<td align="center"><%=dto.getReadcount()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�ۼ���</th>
			<td align="center"><%=dto.getWriter()%></td>
			<th bgcolor="yellow" width="20%">�ۼ���</th>
			<td align="center"><%=dto.getReg_date()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">������</th>
			<td align="left" colspan="3"><%=dto.getSubject()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�̸���</th>
			<td align="left" colspan="3"><%=dto.getEmail()%></td>
		</tr>
		<tr>
			<th bgcolor="yellow" width="20%">�۳���</th>
			<td align="left" colspan="3"><%=dto.getContent()%></td>
		</tr>
    	<tr>
			<td colspan="4" align="right" bgcolor="yellow">
				<input type="button" value="�ۼ���" 
				onclick="window.location='board_updateForm.do?num=<%=dto.getNum()%>'" >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="�ۻ���" 
				onclick="window.location='board_deleteForm.do?num=<%=dto.getNum()%>'">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="�۸��" 
				onclick="window.location='board_list.do'">
			</td>
		</tr> 
	</table>
</div>    



















