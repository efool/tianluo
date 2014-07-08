<%    
 
dim uid,pwd
	uid="your_id"
	pwd="your_pwd"

  Set MyCOM=Server.CreateObject("UNCOM.MyObject1") 
   '=======测试DLL 
   response.write MyCOM.testcom("你好!测试DLL控件。正常使用中。。")&"<br>"
   '=======读取用户信息   说明参数(用户名，密码)
    response.write MyCOM.GetUserInfo(uid,pwd)&"<br>"
   
                        
   '=======注册用户 说明参数(用户名，密码，经销商帐号，公司名称，联系人，联系电话)
    response.write MyCOM.RegineUser(uid,pwd,"winic","深圳XX公司","张总","158899998888")&"<br>"
  
   '=======编辑密码 说明参数(用户名,密码，新密码)
    response.write MyCOM.EditUserPwd(uid,pwd,"123456")&"<br>"
   
   '=======群发短信 说明参数(用户名,密码，接收短信号码(多个用逗号（"，")隔开，短信内容，"")
    response.write MyCOM.SendMessages(uid,pwd,"15889505064","你中华人民共和国好吗"&now&"","")&"<br>"
   
    '=======群发语音 说明参数(用户名,密码，接收语音号码，内容,传送方式，自定义语音路径，服务号码，"","")
	'说明：
	'1  接收语音号码（多个用逗号（"，")隔开
	'2  传送方式（1：系统合成 2 人工合成 3 自定义语音文件（格式为WVA）
	'3   当选自定义语音文件时（传送方式为3时），自定义语音路径    默认为空
  response.write MyCOM.SendVoice(uid,pwd,"15889505064","移动商务中心通知您：尊敬的xxx用户您8月份的电话费用为2895元，为不影响您的使用请尽快到营业缴费。接通客服中心请按 0。谢谢合作！","3","D:\iscalling_wait.wav","075525599862","","")&"<br>"
  
   '=======群发传真   说明参数(用户名,密码，接收传真号码, 接收人 ,标题,传送文件路径,文件名)
   response.write MyCOM.SendFax(uid,pwd,"075525599863","张总收","报价单","D:\测试内容2.doc","报价单.doc")&"<br>"
   
   '=======回拔电话   说明参数(用户名,密码，主叫号码,被叫号码)
   response.write MyCOM.TelCall(uid,pwd,"15889505064","13128783309")&"<br>"
   
   '=======查询短信发送记录 说明参数(用户名,密码，信息编号，开始时间，结束时间)
    response.write MyCOM.GetMessageRecord(uid,pwd,"","","")&"<br>"
	
   '=======查询语音呼叫记录  说明参数(用户名,密码，信息编号，开始时间，结束时间)
   response.write MyCOM.GetVoiceRecord(uid,,pwd,"","","")&"<br>"
   
   '=======查询传真发送记录  说明参数(用户名,密码，信息编号，开始时间，结束时间)
   response.write MyCOM.GetFaxRecord(uid,pwd,"","","")&"<br>"
  
    set MyCOM=nothing
%>
 