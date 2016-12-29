<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<br>
<div class="container">    
  <div class="row">
    <div class="col-sm-4" >
      <div class="panel panel-primary">
        <div class="panel-heading" style="background-color:black">TOP</div>
        <div class="panel-body"><a href="#"><img src="./menu/images/ex1.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading" style="background-color:black; color:white">TOP</div>
        <div class="panel-body"> <a href="#"><img src="./menu/images/ex2.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading" style="background-color:black; color:white">PANTS</div>
        <div class="panel-body"><a href="#"><img src="./menu/images/ex3.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"></div>
      </div>
    </div>
  </div>
</div><br>
<div class="container">    
  <div class="row">
    <div class="col-sm-4" >
      <div class="panel panel-primary">
        <div class="panel-heading" style="background-color:black">TOP</div>
        <div class="panel-body"><a href="#"><img src="./menu/images/ex1.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading" style="background-color:black; color:white">TOP</div>
        <div class="panel-body"> <a href="#"><img src="./menu/images/ex2.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading" style="background-color:black; color:white">PANTS</div>
        <div class="panel-body"><a href="#"><img src="./menu/images/ex3.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer"></div>
      </div>
    </div>
  </div>
</div><br>

<jsp:include page="/menu/bottom.jsp"/>
</body>
</html>