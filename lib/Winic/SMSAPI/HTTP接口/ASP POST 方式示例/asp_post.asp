<%
'=============
'POST���Ͷ���
'����һ������ύ5000������֮��
'ҳ���������Ϊ��GB2312
'=============���ð�����תΪurlcode
Function URLEncoding(vstrIn) 
strReturn = "" 
For i = 1 To Len(vstrIn) 
ThisChr = Mid(vStrIn,i,1) 
If Abs(Asc(ThisChr)) < &HFF Then 
strReturn = strReturn & ThisChr 
Else 
innerCode = Asc(ThisChr) 
If innerCode < 0 Then 
innerCode = innerCode + &H10000 
End If 
Hight8 = (innerCode And &HFF00)\ &HFF 
Low8 = innerCode And &HFF 
strReturn = strReturn & "%" & Hex(Hight8) & "%" & Hex(Low8) 
End If 
Next 
URLEncoding = strReturn 
End Function 
'================������ͨ�Ź���
function getHTTPPage(strurl,data) 
   on error resume next 
    set http = Server.CreateObject("Msxml2.XMLHTTP")
http.Open "POST",strurl, false 
http.setRequestHeader "Content-type:", "text/xml;charset=GB2312"
Http.setRequestHeader   "Content-Type",   "application/x-www-form-urlencoded" 
http.Send(data)
 getHTTPPage=http.ResponseText
set http=nothing

end function 

'=================== 
uid="liqok"  '�˺�(�ĳ����Լ���)
pwd="123456"  '����(�ĳ����Լ���)
mobiles="15800000000,13900000000,13800000000" '���յĺ���post��ʽ����һ�� 5000����֮��
message="�𾴵��û����á�֪ͨ����������˾���ᡣ" '�������� ���70���ַ���
'====================
 url="http://service.winic.org/sys_port/gateway/?"
 sdata=URLEncoding("id="&uid&"&pwd="&pwd&"&to="&mobiles&"&content="&message&"&time=")
 
 binfo=getHTTPPage(url,sdata)  '���Ͳ��ѽ������binfo

  response.write binfo '���һ�·��ͽ��

%>