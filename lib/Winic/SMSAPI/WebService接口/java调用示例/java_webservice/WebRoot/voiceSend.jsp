<%@ page language="java"  pageEncoding="GBK"%>
<%@page import="server.smsService;"%>

<html>
  <head>
    <title>��������</title>
  </head>
  
  <body>
  <%
  // ���Ͷ���
String userid="your_id"; 					 //����û���
String pass="your_pwd";   					//�������
String txtPhone="13480819361"; 				//���յ绰����
String vtxt="JAVA�������Գɹ�,��ϲ�㡣";   					//��������
String Svmode="1";   				//���ͷ�ʽ  1:ϵͳ�ϳ�    2:�˹��ϳ�  3:�Զ�������
String vfbtye="";  					// �Զ��崫�͵��ļ�
String svrno="075525599864";   					 //�ز�ʱ�ķ������
String str_time="";   
String end_time="";
  
	smsService  service=new smsService();
	  String result=service. sendVoice( userid, pass, txtPhone, vtxt, Svmode, vfbtye, svrno, str_time, end_time);
	  out.println(result);

   %>
  </body>
</html>