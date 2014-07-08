<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%> 
<!--#include file=time.asp--> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>短信发送记录示例</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
</head>
  <body>
  
    <TABLE width="477"  border=0  align="center" cellPadding=0  cellSpacing=0>
 
 		  <form name="from1" method="post"  action="doSmsRecord.asp" >
<tr>
  <td height="54" bgcolor="#0099FF"><div align="center" class="STYLE1 STYLE1">asp短信发送记录示例</div></td>
</tr>
	<TR >  
        <TD width="485"  ><table width="103%" height="254" border="0"  id=mySide  style="padding-top:2px;background-color:#E7F0F7">
          <tr>
            <td ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="23">用户名：
                    <label>
                    <input name="uid" type="text" id="uid" size="15" />
                  密码：
                  <input name="pwd" type="password" id="pwd" size="15" />
                  </label></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td  valign="top" >信息编号：
              <label>
              <input name="num" type="text" id="num" size="20" />
            </label></td>
          </tr>
          <tr>
            <td height="29"  valign="top" >开始时间：
              <label><strong>
<input name="ddate" type="text" id="ddate" onclick="javascript:calendar();" value="" size="10" maxlength="50" /> 
至
              <strong>
              <input name="ddate2" type="text" id="ddate2" onclick="javascript:calendar();" value="" size="10" maxlength="50" />
              </strong></strong></label></td>
          </tr>
          
          <tr>
            <td height="75"><table width="100%" border="0">
                <tr>
                  <td width="21%"  style="padding-left:50px">&nbsp;</td>
                  <td width="21%" nowrap="nowrap"  ><input type="submit" name="sms" value="获取记录" /></td>
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


