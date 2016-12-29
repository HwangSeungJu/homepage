<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="faq.FaqDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	dto.setNo(no);
	boolean flag = fdao.delete(no);
%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 

<script type="text/javascript">
function flist(){
	var url = "list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";
	location.href=url;
}
</script>
</head> 
<body>
<jsp:include page="/menu/top.jsp"/>
<br>
<div>
<%
	if(flag){
		out.println("메모 삭제를 완료하였습니다");
	}else{
		out.println("메모 삭제를 실패하였습니다.");
	}
%>
<br><br>
<input type="button" value="목록으로 돌아가기" onclick="flist()">
</div>
</body> 
<jsp:include page="/menu/bottom.jsp"/>
</html>