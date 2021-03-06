<%
url = "http://service2.winic.org:8003/Service.asmx"  'webservice 地址

'==============================查询账户信息
function GetUserInfo(uid,pwd)
SoapRequest="<?xml version="&CHR(34)&"1.0"&CHR(34)&" encoding="&CHR(34)&"utf-8"&CHR(34)&"?>"& _
"<soap:Envelope xmlns:xsi="&CHR(34)&"http://www.w3.org/2001/XMLSchema-instance"&CHR(34)&" "& _
"xmlns:xsd="&CHR(34)&"http://www.w3.org/2001/XMLSchema"&CHR(34)&" "& _
"xmlns:soap="&CHR(34)&"http://schemas.xmlsoap.org/soap/envelope/"&CHR(34)&">"& _
"<soap:Body>"& _
"<GetUserInfo xmlns="&CHR(34)&"http://tempuri.org/"&CHR(34)&">"& _
"<uid>"&uid&"</uid>"& _
"<pwd>"&pwd&"</pwd>"& _
"</GetUserInfo>"& _
"</soap:Body>"& _
"</soap:Envelope>"

Set xmlhttp = server.CreateObject("Msxml2.XMLHTTP")
xmlhttp.Open "POST",url,false
xmlhttp.setRequestHeader "Content-Type", "text/xml;charset=utf-8"
xmlhttp.setRequestHeader "HOST","service2.winic.org"
xmlhttp.setRequestHeader "Content-Length",LEN(SoapRequest)
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/GetUserInfo" '一定要与WEBSERVICE的命名空间相同，否则服务会拒绝
xmlhttp.Send(SoapRequest)
''样就利用XMLHTTP成功发送了与SOAP示例所符的SOAP请求.'检测一下是否返回200=成功： 
     If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            GetUserInfo=xmlDOC.documentElement.selectNodes("//GetUserInfoResult")(0).text '显示节点为GetUserInfoResult的数据(返回字符串)
        Set xmlDOC = nothing
    Else
        GetUserInfo=xmlhttp.Status&"&nbsp;"
        GetUserInfo=xmlhttp.StatusText
    End if
        Set xmlhttp = Nothing
end function

'==============================修改密码
function EditUserPwd(uid,pwd,newpwd)
SoapRequest="<?xml version="&CHR(34)&"1.0"&CHR(34)&" encoding="&CHR(34)&"utf-8"&CHR(34)&"?>"& _
"<soap:Envelope xmlns:xsi="&CHR(34)&"http://www.w3.org/2001/XMLSchema-instance"&CHR(34)&" "& _
"xmlns:xsd="&CHR(34)&"http://www.w3.org/2001/XMLSchema"&CHR(34)&" "& _
"xmlns:soap="&CHR(34)&"http://schemas.xmlsoap.org/soap/envelope/"&CHR(34)&">"& _
"<soap:Body>"& _
"<EditUserPwd xmlns="&CHR(34)&"http://tempuri.org/"&CHR(34)&">"& _
"<uid>"&uid&"</uid>"& _
"<pwd>"&pwd&"</pwd>"& _
"<newpwd>"&newpwd&"</newpwd>"& _
"</EditUserPwd>"& _
"</soap:Body>"& _
"</soap:Envelope>"

Set xmlhttp = server.CreateObject("Msxml2.XMLHTTP")
xmlhttp.Open "POST",url,false
xmlhttp.setRequestHeader "Content-Type", "text/xml;charset=utf-8"
xmlhttp.setRequestHeader "HOST","service2.winic.org"
xmlhttp.setRequestHeader "Content-Length",LEN(SoapRequest)
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/EditUserPwd" '一定要与WEBSERVICE的命名空间相同，否则服务会拒绝
xmlhttp.Send(SoapRequest)
''样就利用XMLHTTP成功发送了与SOAP示例所符的SOAP请求.'检测一下是否返回200=成功： 

      If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            EditUserPwd=xmlDOC.documentElement.selectNodes("//EditUserPwdResult")(0).text '显示节点为GetUserInfoResult的数据(返回字符串)
        Set xmlDOC = nothing
    Else
        EditUserPwd=xmlhttp.Status&"&nbsp;"
        EditUserPwd=xmlhttp.StatusText
    End if
        Set xmlhttp = Nothing
end function


'==============================发送短信函数
function SendMessages(uid,pwd,tos,msg,otime)
SoapRequest="<?xml version="&CHR(34)&"1.0"&CHR(34)&" encoding="&CHR(34)&"utf-8"&CHR(34)&"?>"& _
"<soap:Envelope xmlns:xsi="&CHR(34)&"http://www.w3.org/2001/XMLSchema-instance"&CHR(34)&" "& _
"xmlns:xsd="&CHR(34)&"http://www.w3.org/2001/XMLSchema"&CHR(34)&" "& _
"xmlns:soap="&CHR(34)&"http://schemas.xmlsoap.org/soap/envelope/"&CHR(34)&">"& _
"<soap:Body>"& _
"<SendMessages xmlns="&CHR(34)&"http://tempuri.org/"&CHR(34)&">"& _
"<uid>"&uid&"</uid>"& _
"<pwd>"&pwd&"</pwd>"& _
"<tos>"&tos&"</tos>"& _
"<msg>"&msg&"</msg>"& _
"<otime>"&otime&"</otime>"& _
"</SendMessages>"& _
"</soap:Body>"& _
"</soap:Envelope>"

Set xmlhttp = server.CreateObject("Msxml2.XMLHTTP")
xmlhttp.Open "POST",url,false
xmlhttp.setRequestHeader "Content-Type", "text/xml;charset=utf-8"
xmlhttp.setRequestHeader "HOST","service2.winic.org"
xmlhttp.setRequestHeader "Content-Length",LEN(SoapRequest)
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/SendMessages" '一定要与WEBSERVICE的命名空间相同，否则服务会拒绝
xmlhttp.Send(SoapRequest)
''样就利用XMLHTTP成功发送了与SOAP示例所符的SOAP请求.'检测一下是否返回200=成功： 

    If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            SendMessages=xmlDOC.documentElement.selectNodes("//SendMessagesResult")(0).text '显示节点为GetUserInfoResult的数据(返回字符串)
        Set xmlDOC = nothing
    Else
        SendMessages=xmlhttp.Status&"&nbsp;"
        SendMessages=xmlhttp.StatusText
    End if
        Set xmlhttp = Nothing
end function

'================================取数组中的一个
function split_str(str,sint)
 on error resume next
  dim tempstr
  tempstr=split(str,"/") '/号分割
   split_str=tempstr(sint)
end function

'==============================
uid="your_id" '账号:向业务人员申请
pwd="your_pwd" '密码:向业务人员申请

tos=request.Form("telNo") '手机号码 群发用 , (逗号)号分开
msg=request.Form("tre_Note_Content")  '短信内容 1-70个字符

'response.write GetUserInfo(uid,pwd)&"<br>" '返回账户信息你可以用：000/test/0.8000/0.1000/70/

'response.write split_str(GetUserInfo(uid,pwd),2)&"<br>"  '查余额：000/test/0.8000/0.1000/70/  返回其中的 第 2 项 可以是3或4

'response.write EditUserPwd(uid,pwd,"123456")&"<br>"  '修改用户密码

 response.write SendMessages(uid,pwd,tos,msg,otime) '发送短信

%>

 

