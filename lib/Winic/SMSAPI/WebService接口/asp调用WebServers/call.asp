
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>天外飞音</title>
<link href="public/css.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
 
var curr;
 curr="";
 
 function tag1()
 {
 	curr="1";
	 
 }
 function tag2()
 {
 	curr="2";
	 
 }
 
 function input(v)
 {
 
 	if (  curr == "2" )
 	{ 
		document.getElementById("txt_call").value=document.getElementById("txt_call").value+v.value 
 	}
	else
	{
		document.getElementById("txt_host").value=document.getElementById("txt_host").value+v.value 
	}
	  
 }
 
 function checkForm(obj)
 {
 	if (obj.txt_host.value=="")
	{
		alert("主机号码不能为空")
		obj.txt_host.focus();
		return false;
	}
	if (obj.txt_call.value =="")
	{
		alert("被叫号码不能为空");
		obj.txt_call.focus();
		return false;
	}
	return true;
 }
 

</script>
<style type="text/css">
<!--
.STYLE1 {font-size: 14px}
.STYLE2 {font-size: 12px}
.STYLE3 {
	font-size: 18px;
	font-weight: bold;
}

 
.body{font-size:12px}
.left_li { list-style-image: url(images/littlepic.gif); padding-top:10px;text-align:left}
.left_li li{ margin-top:3px}
#menu{table-layout:fixed;}
#menu .menuHere {
	BORDER-RIGHT: #9ec9ec 1px solid; BORDER-TOP: #9ec9ec 1px solid; BORDER-LEFT: #9ec9ec 1px solid; BORDER-BOTTOM: #9ec9ec 1px solid; HEIGHT: 24px; TEXT-ALIGN: center;FONT-WEIGHT: bold; BACKGROUND: #f4fbff; BORDER-BOTTOM-STYLE: none; color:#FF0000
}
#menu .menuWill {
	BORDER-RIGHT: #9ec9ec 1px solid; BORDER-TOP: #9ec9ec 1px solid; BORDER-LEFT: #9ec9ec 1px solid; BORDER-BOTTOM: #9ec9ec 1px solid; HEIGHT: 24px; TEXT-ALIGN: center; BACKGROUND: #ffffff; 
}
#mySide {
	BORDER-RIGHT: #4F8DC1 1px solid;BORDER-LEFT: #4F8DC1 1px solid;BORDER-BOTTOM: #4F8DC1 1px solid;  border-top:#9ec9ec 1px;
	padding-top:20px
}
#menu .clearance{BORDER-BOTTOM: #9ec9ec 1px solid}
.STYLE4 {
	font-size: 24px;
	font-weight: bold;
}
 
-->
</style>
</head>

<body  >
 <table width="481" border="0" align="center" cellpadding="0" cellspacing="0" id="menu">
  <tbody>
    <tr> 
      <td height="28"   background="img/title_bg.gif" > &nbsp;
       &nbsp;全球网络回呼  </td>
    </tr>
    <tr> 
      <td valign="top" id="mySide" style="padding-top:2px;background-color:#E7F0F7"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="padding-left:50px"    >
          <form id="form1" name="form1" method="post" onsubmit="return checkForm(this)" action="docall.asp" >
            <tr> 
              <td><div align="center"> 
                  <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr> 
                      <td height="34"><div align="left"><font color="#0000FF"><strong>主叫</strong></font> 
                          <input type="text" name="txt_host"  onfocus="tag1()" />
                          <font size="2">*您的号码(接听免费)</font><br />
                        </div></td>
                      <td rowspan="3">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td height="32" nowrap="nowrap"> <div align="left"><strong><font color="#FF3300">被号</font></strong> 
                          <input type="text" name="txt_call"  onfocus="tag2()" />
                          <font size="2">*接听的电话(接听免费)</font></div></td>
                    </tr>
                    <tr> 
                      <td><table width="100%" height="" border="0" cellpadding="0" cellspacing="0">
                          <tr> 
                            <td width="25%"  >
<table width="80%" height="164" border="0" align="center" cellpadding="5" cellspacing="0">
                                <tr> 
                                  <td><input type="button" name="Submit2"   value="1" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px"  onclick="input(this)" /> 
                                  </td>
                                  <td><input type="button" name="Submit3" value="2" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/></td>
                                  <td><input type="button" name="Submit4" value="3" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/></td>
                                </tr>
                                <tr> 
                                  <td><input type="button" name="Submit5" value="4" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/></td>
                                  <td><input type="button" name="Submit7" value="5" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/></td>
                                  <td><input type="button" name="Submit6" value="6" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)" /></td>
                                </tr>
                                <tr> 
                                  <td><input type="button" name="Submit8" value="7" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'" style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" 
  onclick="input(this)"/></td>
                                  <td><input type="button" name="Submit9" value="8" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/></td>
                                  <td><input type="button" name="Submit10" value="9" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/></td>
                                </tr>
                                <tr> 
                                  <td><label> 
                                    <input type="button" name="Submit11" value="*" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"   style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/>
                                    </label></td>
                                  <td><label> 
                                    <input type="button" name="Submit12" value="0" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/>
                                    </label></td>
                                  <td><label> 
                                    <input type="button" name="Submit13" value="#" class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"  style="height:30px; width:30px; font:Arial, Helvetica, sans-serif; font-size:14px" onclick="input(this)"/>
                                    </label></td>
                                </tr>
                              </table>
                            </td>
                            <td width="31%"><input type="submit" style="height:60px; width:80px; font-size:18px"  class="btn3_mouseout" onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
  onmouseup="this.className='btn3_mouseup'"   name="Submit" value="呼叫" /> </td>
                            <td width="44%"><table width="100%" border="0" align="left" cellpadding="5" cellspacing="0">
                                <tr> 
                                  <td> <div align="left" class="STYLE3"><font color="#0033FF">全球呼简介</font></div></td>
                                </tr>
                                <tr> 
                                  <td><div align="left" class="STYLE2">1、通达全球任何一台座机，手机，小灵通</div></td>
                                </tr>
                                <tr> 
                                  <td><div align="left" class="STYLE2">2、价格便宜、接听方便、通话质量好。</div></td>
                                </tr>
                                <tr> 
                                  <td><div align="left" class="STYLE2">3、不另收取通话双方费用。</div></td>
                                </tr>
                                <tr> 
                                  <td> <div align="left" class="STYLE1"><strong><font color="#FF3300">拨号规则：</font></strong></div></td>
                                </tr>
                                <tr> 
                                  <td><div align="left" class="STYLE2">&nbsp;&nbsp;00+国家代码+区号+固定电话号码</div></td>
                                </tr>
                                <tr> 
                                  <td> <div align="left" class="STYLE2">&nbsp;&nbsp;00+国家代码+手机号码（不用加0）</div></td>
                                </tr>
                              </table>
                              <br /></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                </div></td>
            </tr>
          </form>
        </table></td>
    </tr>
    <tr> 
      <td> </td>
    </tr>
  </tbody>
</table>
</body>
</html>
 