<%@ page language="java"  pageEncoding="GBK"%>
<%@page import="server.smsService;"%>

<html>
  <head>
    <title>���ŷ���</title>
  </head>
  
  <body>
  <%
  // ���Ͷ���

	 String userid="your_id";   //����û���
	 String pass="password";	//�������
	 String mobiles="13480819361"; //�Է����յ��ֻ���
	 String msg="JAVA���Զ���ͨ��2008-11-13";  //����
	 String time="";
  
	smsService  service=new smsService();
	  String result=service.sendSms( userid, pass, mobiles, msg, time);
	 out.println(result);

   %>
  </body>
</html>
