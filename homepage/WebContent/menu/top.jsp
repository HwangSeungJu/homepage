<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String root = request.getContextPath();
%>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
      background-color: black;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    .ex{
    	background-color: black;
    	height: 10px;
    }
    .ex1{
    	text-align: center;
    }
    img{
    	height: 200px;
    	width: 1000px;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 로그인</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-star"></span> 회원가입</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-phone"></span> 고객센터</a></li>
      </ul>
    </div>
    </div>
    </nav>


<div class="jumbotron">
  <div class="container text-center">
    <img src="<%=root %>/menu/images/클로즈업.png">
  </div>
</div>




<nav class="navbar navbar-inverse">
  <div class="container-fluid">
<!--     <div class="navbar-header"> -->
<!--       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> -->
<!--         <span class="glyphicon glyphicon-user">로그인</span> -->
<!--         <span class="glyphicon glyphicon-star">회원가입</span> -->
<!--         <span class="glyphicon glyphicon-phone">고객센터</span>                         -->
<!--       </button> -->
<!--       <a class="navbar-brand" href="#"></a> -->
<!--     </div> -->
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="<%=root %>/index.jsp">베스트100</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">OUTER<span class="caret"></span></a>
           <ul class="dropdown-menu">
              <li><a href="#">프리미엄 아우터</a></li>
              <li><a href="#">자켓/점퍼</a></li>
              <li><a href="#">코트</a></li>
              <li><a href="#">패딩</a></li>
              <li><a href="#">항공점퍼</a></li>
              <li><a href="#">수트</a></li>
            </ul>
          </li>
        <li><a href="#">KNIT</a></li>
        <li><a href="<%=root %>/top/Toplist.jsp">TOP</a></li>
        <li><a href="#">SHIRTS</a></li>
        <li><a href="#">PANTS</a></li>
        <li><a href="#">SHOES</a></li>
        <li><a href="#">BAG</a></li>
        <li><a href="#">ACC</a></li>
      </ul>
      
      <ul class="nav navbar-nav">
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">고객센터<span class="caret"></span></a>
           <ul class="dropdown-menu">
              <li><a href="<%=root %>/faq/list.jsp">FAQ 자주묻는질문</a></li>
              <li><a href="#">Q&A 질문과답변</a></li>
            </ul>
          </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>


	<!-- 상단 메뉴 끝 -->



	<!-- 내용 시작 -->
	<div style="width: 100%; padding-top: 0px;">