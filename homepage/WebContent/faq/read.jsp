<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<%    request.setCharacterEncoding("utf-8");

		String col = request.getParameter("col");
		String word = request.getParameter("word");
		String nowPage = request.getParameter("nowPage");

        int no = Integer.parseInt(request.getParameter("no"));
        FaqDTO dto = fdao.read(no);
        String content = dto.getContent();
    	content = content.replaceAll("\r\n", "<br>");
%> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
.title {
	font-size: 28px;
	text-align: center;
	border-style: solid; /* 실선 */
	border-width: 1px; /* 선 두께 */
	border-color: #AAAAAA; /* 선 색깔 */
	color: #000000; /* 글자 색깔 */
	width: 30%; /* 화면의 30% */
	padding: 10px; /* 위 오른쪽 아래 왼쪽: 시간 방향 적용 */
	/* padding: 50px 10px;  50px: 위 아래, 10px: 좌우 */
	/* padding-top: 30px;  상단만 간격을 30px 지정   */
	margin: 20px auto; /* 가운데 정렬 기능, 20px: 위 아래, auto: 오른쪽 왼쪽*/
}
</style> 
<script type="text/javascript">
function flist(){
	var url = "list.jsp";
	url += "?col=<%=col%>"
	url += "&word=<%=word%>"
	url += "&nowPage=<%=nowPage%>"
	location.href=url;
}
function fupdate(){
	var url = "updateForm.jsp";
	url += "?no=<%=no%>";
	url += "&col=<%=col%>"
	url += "&word=<%=word%>"
	url += "&nowPage=<%=nowPage%>"
	location.href=url;	
}
function fdelete(){
	var url = "deleteForm.jsp";
	url += "?no=<%=no%>";
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&nowPage=<%=nowPage%>";
	location.href=url;
}
</script>

</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">FAQ<br>자주묻는질문</DIV>
 
<FORM name='frm' method='POST' action='./.do'>
<div class="container">
  <TABLE class="table table-condensed">
    <TR>
      <TH style="width: 10%">제목</TH>
      <TD><%=dto.getTitle() %></TD>
    </TR>
    <TR>
      <TH>작성자</TH>
      <TD><%=dto.getFname() %></TD>
    </TR>
    <TR>
      <TH>작성일</TH>
      <TD><%=dto.getWdate() %></TD>
    </TR>
    <TR>
      <TD colspan="2"><%=content%></TD>
    </TR>
    <TR>
      <TD colspan="2"></TD>
    </TR>
    
  </TABLE>
 </div> 
  <DIV class='container'>
    <input type='button' class="btn btn-default" value='등록' onclick="location.href='./createForm.jsp'">
    <input type="button" class="btn btn-default" value='목록' onclick="flist()">
    <input type="button" class="btn btn-default" value='수정' onclick="fupdate()">
    <input type="button" class="btn btn-default" value='삭제' onclick="fdelete()">
  </DIV>
</FORM>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html>