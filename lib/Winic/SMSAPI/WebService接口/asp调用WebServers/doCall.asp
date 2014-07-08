 
<%
 
	uid="xnly01" 
	pwd="123456"
	host=request.Form("txt_host") 
	call1=request.Form("txt_call") 

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
 
 
 on error resume next 

'============================== 
function getHTTPPage(strurl) 
   on error resume next 
    set http = Server.CreateObject("Microsoft.XMLHTTP")
	http.Open "GET",strurl, false 
	http.setRequestHeader "Content-type:", "text/xml;charset=GB2312"
	http.Send
	getHTTPPage=http.ResponseText
end function
 '================================开始发送
' strurl="http://service.winic.org:8009/sys_port/gateway/?id="&uid&"&pwd="&pwd&"&to="&mob&"&content="&msg&"&time="

		  
 strurl="http://service.winic.org:8009/voice_service/superphone.asp?id="&uid&"&pwd="&pwd&"&from_no="+host+"&to_no="+call1+"&ocode="
     getHTTPPage strurl  '提交并返回结果 也可以这样写 backinfo=getHTTPPage(strurl) 

 
%>
 
