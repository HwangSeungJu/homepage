<%@ page contentType="text/html; charset=UTF-8" %> 
<%    request.setCharacterEncoding("utf-8");
        String root = request.getContextPath();
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
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
 
<DIV class="title"></DIV>
 
<FORM name='frm' method='POST' action='./.do'>
  <TABLE>
    <TR>
      <TH></TH>
      <TD></TD>
    </TR>
  </TABLE>
  
  <DIV class='bottom'>
    <input type='submit' value=''>
    <input type='button' value='' onclick="location.href=''">
  </DIV>
</FORM>
 
 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html>