<%
'���Ͷ���ʾ��
'SMS.API

uid="test"  '�˺�(�ĳ����Լ���)
pwd="123456"  '����(�ĳ����Լ���)
mob="�˴���д�ֻ����� " '���պ�������,�ŷָ� ���ձ�mob=trim(request("mob")),�磺13000000000,13200000000
msg="���!�������翪�ᣡ" '�������� ���ձ� msg=trim(request("msg"))

'============================== 
function getHTTPPage(strurl) 
   on error resume next 
    set http = Server.CreateObject("Microsoft.XMLHTTP")
	http.Open "GET",strurl, false 
	http.setRequestHeader "Content-type:", "text/xml;charset=GB2312"
	http.Send
	getHTTPPage=http.ResponseText
end function
 '================================��ʼ����
 strurl="http://service.winic.org/sys_port/gateway/?id="&uid&"&pwd="&pwd&"&to="&mob&"&content="&msg&"&time="
 
    backinfo=getHTTPPage(strurl)  '�ύ�����ؽ�� Ҳ��������д backinfo=getHTTPPage(strurl) 

%>
