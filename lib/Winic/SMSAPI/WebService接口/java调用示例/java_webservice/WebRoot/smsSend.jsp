<%@ page language="java"  pageEncoding="GBK"%>
<%@page import="server.smsService;"%>

<html>
  <head>
    <title>短信发送</title>
  </head>
  
  <body>
  <%
  // 发送短信

	 String userid="your_id";   //你的用户名
	 String pass="password";	//你的密码
	 String mobiles="13480819361"; //对方接收的手机号
	 String msg="JAVA测试短信通过2008-11-13";  //内容
	 String time="";
  
	smsService  service=new smsService();
	  String result=service.sendSms( userid, pass, mobiles, msg, time);
	 out.println(result);

   %>
  </body>
</html>
