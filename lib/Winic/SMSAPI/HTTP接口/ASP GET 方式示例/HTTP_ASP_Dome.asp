<%
'发送短信示例
'SMS.API

uid="test"  '账号(改成你自己的)
pwd="123456"  '密码(改成你自己的)
mob="此处填写手机号码 " '接收号码多个用,号分隔 接收表单mob=trim(request("mob")),如：13000000000,13200000000
msg="你好!今天下午开会！" '短信内容 接收表单 msg=trim(request("msg"))

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
 strurl="http://service.winic.org/sys_port/gateway/?id="&uid&"&pwd="&pwd&"&to="&mob&"&content="&msg&"&time="
 
    backinfo=getHTTPPage(strurl)  '提交并返回结果 也可以这样写 backinfo=getHTTPPage(strurl) 

%>
