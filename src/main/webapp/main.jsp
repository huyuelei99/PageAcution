<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="${pageContext.request.contextPath}/loginOut.do" title="注销">注销</a></div>
  </div>
  <div class="forms">
   
  <form action="${pageContext.request.contextPath}/getAuctionAll.do" method="post">
    <label for="name">名称</label>
    <input  type="text" class="nwinput" id="name" name="auction_name"/>
    <label for="names">描述</label>
    <input  type="text" id="names" class="nwinput" name="auction_desc"/>
    <label for="time">开始时间</label>
    <input  type="text" id="time" class="nwinput" name="auction_start_time"/>
    <label for="end-time">结束时间</label>
    <input  type="text" id="end-time" class="nwinput" name="auction_end_time"/>
    <label for="price">起拍价</label>
    <input  type="text" id="price" class="nwinput"  name="auction_start_price"/>
    <input  type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
    </form>
    <c:if test="${sessionScope.user.user_is_admin==1}">
    <form action="add.jsp" method="post">
    <input type="submit"  value="发布" class="spbg buttombg f14  sale-buttom buttomb"/>
    </form>
   </c:if>
  </div>
  
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      <c:forEach items="${requestScope.key}" var="book">
      <ul class="rows">
      <input type="hidden" name="ids" value="${book.auction_id}" />
        <li><a href="国书" title="">${book.auction_name}</a></li>
        <li class="list-wd">${book.auction_desc}</li>
        <li> <fmt:formatDate value="${book.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
        <li><fmt:formatDate value="${book.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
        <li>${book.auction_start_price}</li>
          <li class="borderno red">
          <c:if test="${sessionScope.user.user_is_admin==0}">
           <a href="${pageContext.request.contextPath}/selectRecord.do?auction_id=${book.auction_id}">竞拍</a>
           </c:if>
           <c:if test="${sessionScope.user.user_is_admin==1}">
		   <a href="${pageContext.request.contextPath}/getOne.do?auction_id=${book.auction_id}" title="修改" onclick="dele();">修改</a>      
			<a href="${pageContext.request.contextPath}/delete.do?auction_id=${book.auction_id}" title="删除" onclick="abc();">删除</a>
        	</c:if> 
        </li>
        
      </ul>
     </c:forEach>
      <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div>
  </div>

  <script>
   function abc(){
	   
	   if(confirm("你真的确认要删除吗？请确认")){
	    
		   return true;
		 }
		 else{
			 return false;
			 }
			 
	   };
	   function dele(){
		   if(confirm("你真的确认要修改吗？请确认")){
			   return true;
			   }
			   else{
				   return false;
				   }
		   }
  </script>
<!-- main end-->
</div>
</body>
</html>
