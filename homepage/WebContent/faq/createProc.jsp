<%@ page contentType="text/html; charset=UTF-8" %> 
<%@include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="faq.FaqDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	boolean flag = fdao.create(dto);
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
.bottom {
	margin: 20px auto;
	text-align: center;
	width: 100%;
	padding: 10px; /* 위 오른쪽 아래 왼쪽 */
}
</style> 
<script type="text/javascript">
function flist(){
	var url = "list.jsp";
	location.href=url;
}
</script>

</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">등록</DIV>
<div style="text-align: center;">
<%
	if(flag){
		out.print("<h2>게시물이 등록되었습니다.</h2>");
	}else{
		out.print("게시물 등록에 실패하였습니다.");
	}
%>
</div>
<div class="bottom">
<input type="button" value="계속등록" class="btn btn-default" onclick="location.href='./createForm.jsp'">
<input type="button" value="목록" class="btn btn-default" onclick="flist()">
</div>

 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html>