<%
'���ջظ�ʾ��


userid="id" '�˻���(���Ե�������http://www.winic.org/reg.asp)
pwd="123456" '�˻�����

'=========================
function getHTTPPage(strurl) 
   on error resume next 
    set http = Server.CreateObject("Microsoft.XMLHTTP")
	http.Open "GET",strurl, false 
	http.setRequestHeader "Content-type:", "text/xml;charset=GB2312"
	http.Send
	getHTTPPage=http.ResponseText
end function
'=============================
	strurl="http://service.winic.org/sys_port/Gateway/mo.asp?id="&userid&"&pwd="&pwd&""
	btxt=getHTTPPage(strurl) '���ص�����

    response.write (btxt) '������صĵ�����
				  

		'=================���ص�����д�����ݿ�(��ͽṹ�Լ���)	 
		 newbtxt=split(btxt,"<br>")  '����
		   for br=0 to ubound(newbtxt) 
		            wordbtxt=split(newbtxt(br),"|") '�ֶ�
					
		          ' conn.execute("  insert into  redmsg (stime,sp,mob,content,userid,pwd)values('"&wordbtxt(2)&"',"&wordbtxt(3)&",'"&wordbtxt(0)&"','"&wordbtxt(1)&"','"&username&"','"&pwd&"') ") '�������
		
		   next



%>