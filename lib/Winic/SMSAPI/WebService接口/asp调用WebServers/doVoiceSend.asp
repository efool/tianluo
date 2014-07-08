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
function SendVoice(uid,pwd,vto,vtxt,vmode,vfbtye,svrno,str_time,end_time)
SoapRequest="<?xml version="&CHR(34)&"1.0"&CHR(34)&" encoding="&CHR(34)&"utf-8"&CHR(34)&"?>"& _
"<soap:Envelope xmlns:xsi="&CHR(34)&"http://www.w3.org/2001/XMLSchema-instance"&CHR(34)&" "& _
"xmlns:xsd="&CHR(34)&"http://www.w3.org/2001/XMLSchema"&CHR(34)&" "& _
"xmlns:soap="&CHR(34)&"http://schemas.xmlsoap.org/soap/envelope/"&CHR(34)&">"& _
"<soap:Body>"& _
"<SendVoice xmlns="&CHR(34)&"http://tempuri.org/"&CHR(34)&">"& _
"<uid>"&uid&"</uid>"& _
"<pwd>"&pwd&"</pwd>"& _
"<vto>"&vto&"</vto>"& _
"<vtxt>"&vtxt&"</vtxt>"& _
"<mode>"&vmode&"</mode>"& _
"<FileBytes>"&vfbtye&"</FileBytes>"& _
"<svrno>"&svrno&"</svrno>"& _
"<str_time>"&str_time&"</str_time>"& _
"<end_time>"&end_time&"</end_time>"& _
"</SendVoice>"& _
"</soap:Body>"& _
"</soap:Envelope>"
 
Set xmlhttp = server.CreateObject("Msxml2.XMLHTTP")
xmlhttp.Open "POST",url,false
xmlhttp.setRequestHeader "Content-Type", "text/xml;charset=utf-8"
xmlhttp.setRequestHeader "HOST","service2.winic.org"
xmlhttp.setRequestHeader "Content-Length",LEN(SoapRequest)
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/SendVoice" '一定要与WEBSERVICE的命名空间相同，否则服务会拒绝
xmlhttp.Send(SoapRequest)
''样就利用XMLHTTP成功发送了与SOAP示例所符的SOAP请求.'检测一下是否返回200=成功： 

    If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            SendVoice=xmlDOC.documentElement.selectNodes("//SendVoiceResult")(0).text '显示节点为GetUserInfoResult的数据(返回字符串)
        Set xmlDOC = nothing
    Else
        SendVoice=xmlhttp.Status&"&nbsp;"
        SendVoice=xmlhttp.StatusText
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
	dim vfbtye
	uid="your_id"    '你申请的用户名
	pwd="your_pwd"   '你申请的密码
	vto=request("telNo")    '电话号码
	vtxt=request("tre_Note_Content")   '语音内容
	vmode=request("rbt_Sound_mode")    '传送方式
	svrno=request("txt_Sound_phone")  '服务号码 最多五个 用逗号(",")隔分
	str_time=""  
	end_time=""
 
   
	txtPhone=trim(request.Form("telNo"))   '群发号码用逗号(",")分隔
	txtPhone=replace(txtPhone,chr(10),",")
	txtPhone=replace(txtPhone,chr(13),"")
	txtPhone=replace(txtPhone," ","")
	txtPhone=replace(txtPhone,"，",",") 
	
	IF vmode = "3" THEN    
	  '注意： 取绝对路径哦。如果在服务器上要先文件上传到服务器 再取文件绝对路径 如"d:xx.doc"
	   vfbtye=Goodfile(request.Form("file_Sound"))
	END IF
	

  
   msg =SendVoice(uid,pwd,txtPhone,vtxt,vmode,vfbtye,svrno,str_time,end_time )
 if len(msg)>5 then
   errmsg="恭喜！发送成功：编号是："&msg
   else
   errmsg="发送失败:错误码是："&msg
   end if	
	
       response.Write "<script language=javascript>alert('"&errmsg&"');location.href ='voiceSend.asp';</script>"
%>

 
