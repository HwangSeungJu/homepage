<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.*" %>
<%@ page import="faq.*" %>


<%@ page import="org.apache.commons.fileupload.*" %>

<%@ page import="utility.*" %>
<jsp:useBean id="fdao" class="faq.FaqDAO"/>


<%    
	request.setCharacterEncoding("utf-8");
    String root = request.getContextPath();
    
//   //upload용 변수 선언(폴더명)-------------------
//     String upDir = "/test/storage"; //실제영역
//     String tempDir = "/test/temp";
    
//     upDir = application.getRealPath(upDir); //getRealPath는 절대경로로 만들기위해
//     tempDir = application.getRealPath(tempDir);
%> 