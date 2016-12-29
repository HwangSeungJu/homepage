<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));

	FaqDTO dto = fdao.read(no);
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
<div>삭제 확인</div><br>
<form name='frm' method='POST'
 action='./deleteProc.jsp'
 onsubmit="return input(this)">
 <input type="hidden" name="no" value="<%=no %>"> <!-- no을 계속 가지고가야함. -->
 <input type="hidden" name="col" value="<%=request.getParameter("col")%>">
 <input type="hidden" name="word" value="<%=request.getParameter("word")%>">
  <input type="hidden" name="nowPage" value="<%=request.getParameter("nowPage")%>">
<div>
삭제를 하면 복구 될 수 없습니다.<br><br>
삭제하시려면 삭제버튼을 클릭하세요<br><br>
취소는 '목록'버튼을 누르세요.<br><br>
</div>
<div>
<input type="submit" value="삭제 처리">
<input type="button" value="목록" onclick="flist()">

</div>
</form>


</body> 
<jsp:include page="/menu/bottom.jsp"/>
</html>