<%@ page language="java"  pageEncoding="GBK"%>
<%@page import="server.smsService;"%>

<html>
  <head>
    <title>短信语音</title>
  </head>
  
  <body>
  <%
  // 发送短信
String userid="your_id"; 					 //你的用户名
String pass="your_pwd";   					//你的密码
String txtPhone="13480819361"; 				//接收电话号码
String vtxt="JAVA语音测试成功,恭喜你。";   					//接收内容
String Svmode="1";   				//传送方式  1:系统合成    2:人工合成  3:自定义语音
String vfbtye="";  					// 自定义传送的文件
String svrno="075525599864";   					 //回拨时的服务号码
String str_time="";   
String end_time="";
  
	smsService  service=new smsService();
	  String result=service. sendVoice( userid, pass, txtPhone, vtxt, Svmode, vfbtye, svrno, str_time, end_time);
	  out.println(result);

   %>
  </body>
</html>