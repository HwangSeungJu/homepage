<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<%    

//-------------------------------
	//검색
	//-------------------------------
	String col = Utility.checkNull(request.getParameter("col"));
	String word = Utility.checkNull(request.getParameter("word"));
	if(col.equals("total")){
		word="";
	}
	
	//페이지관련 ------------------------------------------
	int nowPage = 1; // 현재 보고있는 페이지를 나타냄.
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	int recordPerPage = 5; //한 페이지당 보여줄 레코드 갯수.
	
	//DB에서 가져올 순번 -------------------------------------
	int sno = ((nowPage-1)*recordPerPage)+1;
	int eno = nowPage * recordPerPage;
	
	Map map = new HashMap();
	map.put("col", col);
	map.put("word", word);
	map.put("sno", sno);
	map.put("eno", eno);
	
	int totalRecord = fdao.total(col, word);
	//---------------------------
	List<FaqDTO> list = fdao.list(map);
	Iterator<FaqDTO> iter = list.iterator();
	
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
function read(no){
	var url = "read.jsp";
	url += "?no="+no;
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
 
<DIV class="title"><h1>FAQ</h1><h4>자주묻는질문</h4></DIV>
 <DIV class="container">
    <form method="POST" action="./list.jsp">
    	<select name="col">
    		<option value="title"
    		<%if(col.equals("title")) out.print("selected='selected'"); %>
    		>제목</option>
    		<option value="content"
    		<%if(col.equals("content")) out.print("selected='selected'"); %>
    		>내용</option>
    		<option value="fname"
    		<%if(col.equals("fname")) out.print("selected='selected'"); %>
    		>작성자</option>
    		<option value="total">전체출력</option>
    	</select>
    	<input type="text" name="word" value="<%=word%>">
    	<input type="submit" class="btn btn-default btn-sm" value="검색">
    	<input type="button" class="btn btn-default btn-sm" value="등록" onclick="location.href='./createForm.jsp'">
    </form>
  </DIV>
  <br>
<div class="container">
  <TABLE class="table table-condensed">
    <TR>
      <TH style="font-size: 18px">번호</TH>
      <TH style="font-size: 18px; width: 65%">제목</TH>
      <TH style="font-size: 18px; width: 20%">작성자</TH>
      <TH style="font-size: 18px">작성일</TH>
    </TR>
    <tbody>
    <% if(list.size()==0){ %> 
	<tr>
		<td colspan="4">등록된 글이 없습니다.</td>
	</tr>
<%	}else{
		while(iter.hasNext()){
			FaqDTO dto = iter.next();
	%>
    <TR>
      <td><%=dto.getNo() %></td>
      <td>
      <a href="javascript:read('<%=dto.getNo() %>')" style="color: black">
      <%=dto.getTitle() %>
      </a>
      </td>
      <td><%=dto.getFname() %></td>
      <td><%=dto.getWdate() %></td>
    </TR>
    <%}
    } %>
    </tbody>
  </TABLE>
  </div>
   <DIV class='bottom'>
    <%=Utility.paging3(totalRecord, nowPage, recordPerPage, col, word) %>
  </DIV>

 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html>