<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="public/css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.body{font-size:12px}
.left_li { list-style-image: url(images/littlepic.gif); padding-top:10px;text-align:left}
.left_li li{ margin-top:3px}
#menu{table-layout:fixed;}
#menu .menuHere {
	BORDER-RIGHT: #9ec9ec 1px solid; BORDER-TOP: #9ec9ec 1px solid; BORDER-LEFT: #9ec9ec 1px solid; BORDER-BOTTOM: #9ec9ec 1px solid; HEIGHT: 24px; TEXT-ALIGN: center;FONT-WEIGHT: bold; BACKGROUND: #f4fbff; BORDER-BOTTOM-STYLE: none; color:#FF0000
}

#menu .bgColor {
	  BACKGROUND: #f4fbff; BORDER-BOTTOM-STYLE: none; 
}

#menu .menuWill {
	BORDER-RIGHT: #9ec9ec 1px solid; BORDER-TOP: #9ec9ec 1px solid; BORDER-LEFT: #9ec9ec 1px solid; BORDER-BOTTOM: #9ec9ec 1px solid; HEIGHT: 24px; TEXT-ALIGN: center; BACKGROUND: #ffffff; 
}
#mySide {
	BORDER-RIGHT: #9ec9ec 1px solid;BORDER-LEFT: #9ec9ec 1px solid; BORDER-BOTTOM: #9ec9ec 1px solid; border-top:#9ec9ec 1px;
	padding-top:20px
}
#menu .clearance{BORDER-BOTTOM: #9ec9ec 1px solid}
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
 
 
 

</head>
<body   >
 
  <TABLE width="477"  border=0  align="center" cellPadding=0  cellSpacing=0>
 
 		  <form name="sendForm" method="post"  action="doSmsSend.asp" >
<tr>
  <td bgcolor="#0099FF"><div align="center" class="STYLE1">asp短信发送示例</div></td>
</tr>
	<TR >  
        <TD width="485"  ><table width="100%" border="0"  id=mySide  style="padding-top:2px;background-color:#E7F0F7">
          <tr>
            <td ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="23"><font color="#FF0000">接收短信号码 
                  (多个号码请 换行。区号+号码，手机不加0)</font></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td  valign="top" ><div style="padding-left:20px;"> <textarea name="telNo" cols="57" rows="7"    id="textarea7"></textarea>         </div>   </td>
          </tr>
          <tr>
            <td  valign="top" >输入发送短信内容：</td>
          </tr>
          <tr >
            <td  ><div style="padding-left:20px;"> <textarea name="tre_Note_Content" cols="57" rows="5" id="tre_Note_Content"  ></textarea>         </div>   </td>
          </tr>
          <tr>
            <td><table width="100%" border="0">
                <tr>
                  <td width="21%"  style="padding-left:50px">&nbsp;</td>
                  <td width="21%" nowrap="nowrap"  ><input type="submit" name="sms" value="发送短信" /></td>
                  <td width="58%">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
        </table></TD>
	</TR>
    </form>
</TABLE>
 
 
</body>
</html>