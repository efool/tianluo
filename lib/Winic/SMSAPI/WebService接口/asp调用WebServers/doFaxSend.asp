<%
url = "http://service2.winic.org:8003/Service.asmx"  'webservice 地址

  
    '============================== 
  '通过 ADODB.Stream 流化后 用 xml 转化base64 编码 哈哈

function Goodfile(filepath)
  Dim   xmlDoc   
  Dim   xmlNode   
  Set   xmlDoc   =   Server.CreateObject("MSXML2.DOMDocument")   
     xmlDoc.insertBefore   xmlDoc.createProcessingInstruction("xml",   "version=""1.0""   encoding=""utf-8"""),   xmlDoc.childNodes(0)   
     xmlDoc.appendChild   xmlDoc.createElement("bin")   
  Set   xmlNode   =   xmlDoc.documentElement   
  Dim   objFile   
  Set   objFile   =   Server.CreateObject("ADODB.Stream")   
  objFile.Type   =   1   
  objFile.Open   
  objFile.LoadFromFile  filepath
  xmlNode.dataType   =   "bin.base64"   
  xmlNode.nodeTypedValue   =   objFile.Read(-1)   
  objFile.Close   
  Set   objFile   =   Nothing   
  Response.ContentType   =   "text/html"   
    Goodfile=xmlNode.Text   
 ' Response.ContentType   =   "text/xml"   
  'xmlDoc.Save   Response   
  Set   xmlDoc   =   Nothing   
end function
'=======================================


'==============================发送短信函数
function SendFax(uid,pwd,faxno,men,title,Bytes,FileName)
SoapRequest="<?xml version="&CHR(34)&"1.0"&CHR(34)&" encoding="&CHR(34)&"utf-8"&CHR(34)&"?>"& _
"<soap:Envelope xmlns:xsi="&CHR(34)&"http://www.w3.org/2001/XMLSchema-instance"&CHR(34)&" "& _
"xmlns:xsd="&CHR(34)&"http://www.w3.org/2001/XMLSchema"&CHR(34)&" "& _
"xmlns:soap="&CHR(34)&"http://schemas.xmlsoap.org/soap/envelope/"&CHR(34)&">"& _
"<soap:Body>"& _
"<SendFax  xmlns="&CHR(34)&"http://tempuri.org/"&CHR(34)&">"& _
"<uid>"&uid&"</uid>"& _
"<pwd>"&pwd&"</pwd>"& _
"<faxno>"&faxno&"</faxno>"& _
"<men>"&men&"</men>"& _
"<title>"&title&"</title>"& _
"<Bytes>"&Bytes&"</Bytes>"& _
"<FileName>"&FileName&"</FileName>"& _ 
"</SendFax>"& _
"</soap:Body>"& _
"</soap:Envelope>"
 
 
Set xmlhttp = server.CreateObject("Msxml2.XMLHTTP")
xmlhttp.Open "POST",url,false
xmlhttp.setRequestHeader "Content-Type", "text/xml;charset=utf-8"
xmlhttp.setRequestHeader "HOST","service2.winic.org"
xmlhttp.setRequestHeader "Content-Length",LEN(SoapRequest)
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/SendFax" '一定要与WEBSERVICE的命名空间相同，否则服务会拒绝
xmlhttp.Send(SoapRequest)
''样就利用XMLHTTP成功发送了与SOAP示例所符的SOAP请求.'检测一下是否返回200=成功： 

    If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            SendFax =xmlDOC.documentElement.selectNodes("//SendFaxResult ")(0).text '显示节点为GetUserInfoResult的数据(返回字符串)
        Set xmlDOC = nothing
    Else
        SendFax =xmlhttp.Status&"&nbsp;"
        SendFax =xmlhttp.StatusText
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
dim uid,pwd,faxno,men,title,Bytes,FileName
uid="your_id"   '请申请的用户名
pwd="your_pwd"  '请申请的密码
 faxno=request("telNo")   '接收传真电话号码
  	faxno=replace(faxno,chr(10),",")
	faxno=replace(faxno,chr(13),"")
	faxno=replace(faxno," ","")
	faxno=replace(faxno,"，",",")
	
	men=request.Form("txt_Fax_TO") '传真接收人
	title=request.Form("txt_Fax_SUB") '传真标题
	Bytes=Goodfile(request.Form("faxFile"))  '注意： 取绝对路径哦。。如果在服务器上要先上传上去哦 再取文件路径  如"d:\xxx.doc"
	                                         
	
	f_Name=split(request.Form("faxFile"),"\") 
	FileName=f_Name(ubound(f_Name))      '只取文件名 如 "xxx.doc"
	 
 response.write SendFax(uid,pwd,faxno,men,title,Bytes,FileName)
				 
%>
 