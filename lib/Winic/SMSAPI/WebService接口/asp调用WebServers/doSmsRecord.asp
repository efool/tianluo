
<%
url = "http://service2.winic.org:8003/Service.asmx"  'webservice ��ַ
 

'==============================���Ͷ��ż�¼����
function GetMessageRecord(uid,pwd,num,startDate,endDate)
SoapRequest="<?xml version="&CHR(34)&"1.0"&CHR(34)&" encoding="&CHR(34)&"utf-8"&CHR(34)&"?>"& _
"<soap:Envelope xmlns:xsi="&CHR(34)&"http://www.w3.org/2001/XMLSchema-instance"&CHR(34)&" "& _
"xmlns:xsd="&CHR(34)&"http://www.w3.org/2001/XMLSchema"&CHR(34)&" "& _
"xmlns:soap="&CHR(34)&"http://schemas.xmlsoap.org/soap/envelope/"&CHR(34)&">"& _
"<soap:Body>"& _
"<GetMessageRecord  xmlns="&CHR(34)&"http://tempuri.org/"&CHR(34)&">"& _
"<uid>"&uid&"</uid>"& _
"<pwd>"&pwd&"</pwd>"& _
"<num>"&num&"</num>"& _
"<StartDate>"&startDate&"</StartDate>"& _
"<EndDate>"&endDate&"</EndDate>"& _
"</GetMessageRecord >"& _
"</soap:Body>"& _
"</soap:Envelope>"
 

Set xmlhttp = server.CreateObject("Msxml2.XMLHTTP")
xmlhttp.Open "POST",url,false
xmlhttp.setRequestHeader "Content-Type", "text/xml;charset=utf-8"
xmlhttp.setRequestHeader "HOST","service2.winic.org"
xmlhttp.setRequestHeader "Content-Length",LEN(SoapRequest)
xmlhttp.setRequestHeader "SOAPAction", "http://tempuri.org/GetMessageRecord " 'һ��Ҫ��WEBSERVICE�������ռ���ͬ����������ܾ�
xmlhttp.Send(SoapRequest)
''��������XMLHTTP�ɹ���������SOAPʾ��������SOAP����.'���һ���Ƿ񷵻�200=�ɹ��� 

    If xmlhttp.Status = 200 Then
        Set xmlDOC = server.CreateObject("MSXML.DOMDocument")
        xmlDOC.load(xmlhttp.responseXML)
            GetMessageRecord=xmlDOC.documentElement.selectNodes("//GetMessageRecordResult")(0).text '��ʾ�ڵ�ΪGetUserInfoResult������(�����ַ���)
        Set xmlDOC = nothing
    Else
        GetMessageRecord=xmlhttp.Status&"&nbsp;"
        GetMessageRecord=xmlhttp.StatusText
    End if
        Set xmlhttp = Nothing
end function
 

'==============================
 
 uid=request.Form("uid")
 pwd=request.Form("pwd")
 num=request.Form("num")
 startDate=request.Form("ddate")
 endDate=request.Form("ddate2")
 
  dim txtResult
 txtResult= GetMessageRecord(uid,pwd,num,startDate,endDate) '���Ͷ���
 IF  LEN(txtResult) >10 THEN 
%>

 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th width="10%" scope="col">�û���</th>
    <th width="13%" scope="col">��Ϣ���               </th>
    <th width="64%" scope="col">�������� </th>
    <th width="7%" scope="col">��������</th>
    <th width="6%" scope="col">����״̬</th>
  </tr>
  <%
  	arrResult=split(txtResult,"|")
	for ii=0 to ubound(arrResult)
	   arrStr=split(arrResult(ii),"/")
  %>
  <tr>
    <td><%=arrStr(0)%></td>
    <td><%=arrStr(1)%></td>
    <td><%=arrStr(2)%></td>
    <td><%=arrStr(3)%></td>
    <td><%=arrStr(4)%></td>
  </tr>
  <%next%>
</table>

<%
ELSE
	RESPONSE.WRITE txtResult
END IF%>