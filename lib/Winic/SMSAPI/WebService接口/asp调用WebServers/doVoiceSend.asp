<%
url = "http://service2.winic.org:8003/Service.asmx"  'webservice ��ַ 


  '============================== 
  'ͨ�� ADODB.Stream ������ �� xml ת��base64 ���� ����

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


'==============================���Ͷ��ź���
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
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/SendVoice" 'һ��Ҫ��WEBSERVICE�������ռ���ͬ����������ܾ�
xmlhttp.Send(SoapRequest)
''��������XMLHTTP�ɹ���������SOAPʾ��������SOAP����.'���һ���Ƿ񷵻�200=�ɹ��� 

    If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            SendVoice=xmlDOC.documentElement.selectNodes("//SendVoiceResult")(0).text '��ʾ�ڵ�ΪGetUserInfoResult������(�����ַ���)
        Set xmlDOC = nothing
    Else
        SendVoice=xmlhttp.Status&"&nbsp;"
        SendVoice=xmlhttp.StatusText
    End if
        Set xmlhttp = Nothing

end function

'================================ȡ�����е�һ��
function split_str(str,sint)
 on error resume next
  dim tempstr
  tempstr=split(str,"/") '/�ŷָ�
   split_str=tempstr(sint)
end function
 


'==============================
	dim vfbtye
	uid="your_id"    '��������û���
	pwd="your_pwd"   '�����������
	vto=request("telNo")    '�绰����
	vtxt=request("tre_Note_Content")   '��������
	vmode=request("rbt_Sound_mode")    '���ͷ�ʽ
	svrno=request("txt_Sound_phone")  '������� ������ �ö���(",")����
	str_time=""  
	end_time=""
 
   
	txtPhone=trim(request.Form("telNo"))   'Ⱥ�������ö���(",")�ָ�
	txtPhone=replace(txtPhone,chr(10),",")
	txtPhone=replace(txtPhone,chr(13),"")
	txtPhone=replace(txtPhone," ","")
	txtPhone=replace(txtPhone,"��",",") 
	
	IF vmode = "3" THEN    
	  'ע�⣺ ȡ����·��Ŷ������ڷ�������Ҫ���ļ��ϴ��������� ��ȡ�ļ�����·�� ��"d:xx.doc"
	   vfbtye=Goodfile(request.Form("file_Sound"))
	END IF
	

  
   msg =SendVoice(uid,pwd,txtPhone,vtxt,vmode,vfbtye,svrno,str_time,end_time )
 if len(msg)>5 then
   errmsg="��ϲ�����ͳɹ�������ǣ�"&msg
   else
   errmsg="����ʧ��:�������ǣ�"&msg
   end if	
	
       response.Write "<script language=javascript>alert('"&errmsg&"');location.href ='voiceSend.asp';</script>"
%>

 
