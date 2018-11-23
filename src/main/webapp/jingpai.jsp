<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/query/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		//加载
		$(function(){});
		
		
		function changePrice(){
			//获取到当前价格
			var price=$("#sale").val();
			//获取到最高出价
			var maxPrice=$(".price")[0].innerHTML;
			//获取到起拍价
			var price1=$("#start").val();
			if(price>parseInt(maxPrice)&&price>price1){
				return true;
			}else{
				$("#error").html("出价不能小于起拍价且同时大于当前最高价");
				return false;
			}
		}
		
		function Change(){
			if(changePrice()){
				return true;
			}else{
				return false;
			}
		}
	</script>

</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="${pageContext.request.contextPath}/loginOut.do" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称：</li>
        <li class="borderno">${auction.auction_name}</li>
      </ul>
      <ul class="rows">
        <li>描述：</li>
        <li class="borderno">${auction.auction_desc}</li>
      </ul>
      <ul class="rows">
        <li>开始时间：</li>
        <li class="borderno">
        <fmt:formatDate value="${auction.auction_start_time}" pattern="yyyy-MM-dd HH:mm:ss"  />
        </li>
      </ul>
      <ul class="rows">
        <li>结束时间：</li>
        <li class="borderno">
          <fmt:formatDate value="${auction.auction_end_time}" pattern="yyyy-MM-dd HH:mm:ss"  />
        </li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价：</li>
        <li class="borderno" >${auction.auction_start_price}</li>
      </ul>
  </div>
  <div class="rg borders"><img src="${pageContext.request.contextPath}/images/${auction.auction_pic}" width="270" height="185" alt="" /></div>
  <div class="cl"></div>
  <form action="${pageContext.request.contextPath}/insertRecord.do" method="post" onsubmit="return Change()">
  <div class="top10 salebd">
   
       <p>
       <label for="sale">出价：</label>
       <input type="hidden" name="auction_id"  value="${auction.auction_id }">
     
       <input type="text"  name="auction_price"   class="inputwd" id="sale" value="${auss.auction_price}" onblue="changePrice()"/>
       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
        <input id="start" type="hidden"  value="${auction.auction_start_price}"/>
       </p>
      
       <p class="f14 red" id="error"></p>
       </form>
  </div>
  <div class="top10">
    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    <input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
      <c:forEach items="${requestScope.recordList}" var="re">
      <ul class="rows even border-no">
        <li>
        	<fmt:formatDate value="${re.auction_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </li>
      	<!--   从这里获取到价格最大值  ，按照降序排序的 -->
        <li class="price">${re.auction_price}</li>
        <li class="borderno">${re.user_name}</li>
      </ul>
      </c:forEach>
  </div>
  </div>
<!-- main end-->
</div>
</body>
 
</html>
