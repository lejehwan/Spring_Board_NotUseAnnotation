<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, board.dto.*"%>
<!-- list.jsp -->
<html>
<head>
	<title>�Խñ�</title>
</head>
<body>
	<div align="center">
		<b>�� �� ��</b>
		<table border="0" width="800">
			<tr bgcolor="yellow">
				<td align="right"><a href="board_writeForm.do">�۾���</a></td>
			</tr>
		</table>
		<table border="1" width="800">
			<tr bgcolor="green">
				<th>��ȣ</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>�ۼ���</th>
				<th>��ȸ</th>
				<th>IP</th>
			</tr>
<% 		List<BoardDBBean> list = (List)request.getAttribute("list");
		if (list == null || list.size()==0){%>
			<tr>
				<td colspan="6">�Խõ� ���� �����ϴ�.</td>
			</tr>
<%		}else { 
			for(BoardDBBean dto : list){%>
			<tr>
				<td><%=dto.getNum()%></td>
				<td><a href="board_content.do?num=<%=dto.getNum()%>"><%=dto.getSubject()%></a></td>
				<td><%=dto.getWriter()%></td>
				<td><%=dto.getReg_date()%></td>
				<td><%=dto.getReadcount()%></td>
				<td><%=dto.getIp()%></td>
			</tr>
<%			}
		}	%>		
		</table>
	</div>
</body>
</html>




