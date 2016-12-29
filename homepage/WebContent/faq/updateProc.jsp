<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="faq.FaqDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%    
	String col = request.getParameter("col");
	String word = request.getParameter("word");
	String nowPage = request.getParameter("nowPage");
	
	//수정처리
		boolean flag = fdao.update(dto);

%> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
<script type="text/javascript">
function flist(){
	var url = "list.jsp";
	url += "?col=<%=col%>"
	url += "&word=<%=word%>" 
	url += "&nowPage=<%=nowPage%>"
	location.href=url;
}
</script>
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
 
<DIV class="title">수정 처리 결과</DIV>
<div class="content">
<%
	if(flag){
		out.print("글을 변경했습니다.");
	}else{
		out.print("글변경을 실패했습니다.");
	}
%>
</div>
 <DIV class='bottom'>
    <input type='button' value='다시 등록' onclick="location.href='createForm.jsp'">
    <input type='button' value='목록' onclick="flist()">
  </DIV>
 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html>