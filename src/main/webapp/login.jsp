<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/query/jquery-1.11.1.js"></script>
		<script type="text/javascript">
			function test(){
			/* 项目名/url-pattern */
				$("#mmg").prop("src"," ${pageContext.request.contextPath}/kapp.do?a="+Math.random());
			};		
		</script>
</head>
  
  <body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="${pageContext.request.contextPath}/images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="${pageContext.request.contextPath}/getUserOne.do" method="post" target="_blank" onsubmit="return change()">
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label><input type="text" class="inputh" name="user_name"  id="namess" /></dd>
        <dd><label for="password">密 码：</label><input type="text" class="inputh" name="user_password" id="password" /></dd>
        <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" class="inputh inputs lf" name="kap" id="passwords"/>
           <span class="wordp lf"><img src="${pageContext.request.contextPath}/kapp.do" width="96" height="27" alt="" id="mmg"/></span>
           <span class="blues lf"><a href="javascript:void(0)" title="" onclick="test()">看不清</a></span>
       		
        </dd>
        <dd>
           <input name=""  type="checkbox" id="rem_u"  />
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <span style="font-size: 14px;color: red; font-weight: bolder;">${requestScope.error}</span>
            </form>
           <form action="regist.jsp" method="post">
           <input name="" type="submit" value="注 册" class="spbg buttombg f14 lf" />
           
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
            </form>
           <div class="cl"></div>
           
        </dd>
       
      </dl>
    </div>
   
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
