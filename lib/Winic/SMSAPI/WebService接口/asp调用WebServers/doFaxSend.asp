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
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/SendFax" 'һ��Ҫ��WEBSERVICE�������ռ���ͬ����������ܾ�
xmlhttp.Send(SoapRequest)
''��������XMLHTTP�ɹ���������SOAPʾ��������SOAP����.'���һ���Ƿ񷵻�200=�ɹ��� 

    If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            SendFax =xmlDOC.documentElement.selectNodes("//SendFaxResult ")(0).text '��ʾ�ڵ�ΪGetUserInfoResult������(�����ַ���)
        Set xmlDOC = nothing
    Else
        SendFax =xmlhttp.Status&"&nbsp;"
        SendFax =xmlhttp.StatusText
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
dim uid,pwd,faxno,men,title,Bytes,FileName
uid="your_id"   '��������û���
pwd="your_pwd"  '�����������
 faxno=request("telNo")   '���մ���绰����
  	faxno=replace(faxno,chr(10),",")
	faxno=replace(faxno,chr(13),"")
	faxno=replace(faxno," ","")
	faxno=replace(faxno,"��",",")
	
	men=request.Form("txt_Fax_TO") '���������
	title=request.Form("txt_Fax_SUB") '�������
	Bytes=Goodfile(request.Form("faxFile"))  'ע�⣺ ȡ����·��Ŷ��������ڷ�������Ҫ���ϴ���ȥŶ ��ȡ�ļ�·��  ��"d:\xxx.doc"
	                                         
	
	f_Name=split(request.Form("faxFile"),"\") 
	FileName=f_Name(ubound(f_Name))      'ֻȡ�ļ��� �� "xxx.doc"
	 
 response.write SendFax(uid,pwd,faxno,men,title,Bytes,FileName)
				 
%>
 