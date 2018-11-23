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
				$("#mmg").prop("src","${pageContext.request.contextPath}/kapp.do?a="+Math.random());
			};		
			
			
			function change() {
				var name4 = changename();
				var psd4 = changepassword();
				var card4 = changecard();
				var phone4 = changetel();
				var boxs=changebox();
				if (name4 && psd4 && card4 && phone4&&boxs) {
					return true;
				} else {
					return false;
				}
			}

			function changename() {
				var name3 = $("#name1").val();
				if (name3.length >= 6) {
					$("#name2").html("");
					return true;
				} else {
					$("#name2").html("用户名要求不低于6个字符");
					return false;
				}
			}

			function changepassword() {
				var psd3 = $("#psd1").val();
				if (psd3.length >= 6) {
					$("#psd2").html("");
					return true;
				} else {
					$("#psd2").html("用户名要求不低于6个字符");
					return false;
				}
			}

			function changecard() {
				var card3 = $("#card1").val();
				/* 	表示非空只能用''，不能用null */
				if (card3 != '') {
					$("#card2").html("");
					return true;
				} else {
					$("#card2").html("身份证号必填");
					return false;
				}
			}

			function changetel() {
				var phone3 = $("#phone1").val();
				/* 	表示非空只能用''，不能用null */
				if (phone3 != '') {
					$("#phone2").html("");
					return true;
				} else {
					$("#phone2").html("电话号码必填");
					return false;
				}
			}
			function changebox(){
				var box=$(":checkbox").prop("checked");
				if(box){
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
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
        <form method="post" action="${pageContext.request.contextPath}/regist.do" onsubmit="return change()">
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input type="text" class="inputh lf" value=""  name="user_name" onblur="changename()" id="name1"/>
             <div class="lf red laba" id="name2"><!-- 用户名要求不低于6个字符 --></div>
            </dd>
            <dd>
              <label> <small>*</small>密码</label>
              <input type="text" class="inputh lf" value=""  name="user_password" onblur="changepassword()" id="psd1"/>
              <div class="lf red laba" id="psd2"><!-- 密码要求不低于6个字符 --></div>
            </dd>
            <dd>
              <label> <small>*</small>身份证号</label>
              <input type="text" class="inputh lf" value="" name="user_card_no" onblur="changecard()" id="card1"/>
              <div class="lf red laba" id="card2"><!-- 身份证号必填 --></div>
            </dd>
            <dd>
              <label> <small>*</small>电话</label>
              <input type="text" class="inputh lf" value="" name="user_tel" onblur="changetel()" id="phone1"/>
              <div class="lf red laba" id="phone2"><!-- 电话号码必填 --></div>
            </dd>
            <dd>
              <label> <small>*</small>住址</label>
              <input type="text" class="inputh lf" value=""  name="user_address" />
            </dd>
            <dd>
              <label> <small>*</small>邮政编码</label>
              <input type="text" class="inputh lf" value=""  name="user_post_number" />
            </dd>
            <dd class="hegas">
              <label> <small>*</small>验证码</label>
              <input type="text" class="inputh inputs lf" value=""name="kap"/>
               <span class="wordp lf"><img src="${pageContext.request.contextPath}/kapp.do" width="96" height="27" alt="" id="mmg"/></span>
               <span class="blues lf"><a href="javascript:void(0)" title="" onclick="test()">看不清</a></span>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name=""  type="checkbox" id="rem_u"  onblur="changebox()" />
              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
            </dd>
           
          </dl>
		 </form>	
    </div>

<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body> 
  
 
</html>
