<%
'接收回复示例


userid="id" '账户名(可以到这申请http://www.winic.org/reg.asp)
pwd="123456" '账户密码

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
	btxt=getHTTPPage(strurl) '返回的内容

    response.write (btxt) '输出返回的的内容
				  

		'=================返回的内容写进数据库(表和结构自己改)	 
		 newbtxt=split(btxt,"<br>")  '分条
		   for br=0 to ubound(newbtxt) 
		            wordbtxt=split(newbtxt(br),"|") '分段
					
		          ' conn.execute("  insert into  redmsg (stime,sp,mob,content,userid,pwd)values('"&wordbtxt(2)&"',"&wordbtxt(3)&",'"&wordbtxt(0)&"','"&wordbtxt(1)&"','"&username&"','"&pwd&"') ") '存进库里
		
		   next



%>