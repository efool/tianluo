<%
'=============
'POST发送短信
'建议一次最大提交5000个号码之内
'页面编码类型为：GB2312
'=============作用把中文转为urlcode
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
'================与网关通信过程
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
uid="liqok"  '账号(改成你自己的)
pwd="123456"  '密码(改成你自己的)
mobiles="15800000000,13900000000,13800000000" '接收的号码post方式建议一次 5000号码之内
message="尊敬的用户您好。通知您下午来公司开会。" '短信内容 最大70个字符。
'====================
 url="http://service.winic.org/sys_port/gateway/?"
 sdata=URLEncoding("id="&uid&"&pwd="&pwd&"&to="&mobiles&"&content="&message&"&time=")
 
 binfo=getHTTPPage(url,sdata)  '发送并把结果赋给binfo

  response.write binfo '输出一下发送结果

%>