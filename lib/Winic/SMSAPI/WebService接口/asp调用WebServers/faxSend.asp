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
#menu .menuWill {
	BORDER-RIGHT: #9ec9ec 1px solid; BORDER-TOP: #9ec9ec 1px solid; BORDER-LEFT: #9ec9ec 1px solid; BORDER-BOTTOM: #9ec9ec 1px solid; HEIGHT: 24px; TEXT-ALIGN: center; BACKGROUND: #ffffff; 
}
#mySide {
	BORDER-RIGHT: #4F8DC1 1px solid;BORDER-LEFT: #4F8DC1 1px solid; BORDER-BOTTOM: #4F8DC1 1px solid;  border-top:#9ec9ec 1px;
	padding-top:20px
}
#menu .clearance{BORDER-BOTTOM: #9ec9ec 1px solid}
.STYLE4 {font-size: 24px}
-->
</style>
 
<script language="javascript"> 
 
 function chckForm1(obj)
{
	if (obj.telNo.value =="")
	{
		alert("接收号码不能为空");
		return false;
	}
 
	var temp=obj.faxFile.value; 
	if (temp =="")
	{
	alert("传真文件不能为空");
	return false;
	}
	 

	arr=temp.split(".");
	 
	ext=arr[arr.length-1].toLowerCase() ;
 
	if ((ext =="doc")||(ext=="pdf")||(ext=="xls")||(ext=="ppt"))
	{
		return true;
	}
	else
	{
		 alert("传真文件格式不正确.") ;
		 return false;
	}

}

function chck_Mode(obj)
{
  if (obj.value == 3)
  {
  	document.getElementById("fileSound").style.display="";
	document.getElementById("tre_Content").Enabled=false;
  }else
  {
  
  	document.getElementById("tre_Content").Enabled=true;
  	document.getElementById("fileSound").style.display="none";	
  }
  
}
 
		
</script>
</head>
<body class="body">
  
<TABLE  cellSpacing=0 cellPadding=0 width=600 align=center style=" padding-left:50px"  border=0>
        <form name="sendForm" method="post" onsubmit="return chckForm1(this)" action="doFaxSend.asp" >
        <TR> 
          <TD width="100%" valign="top" >
		
            <TABLE width="100%" border=0 align="center" cellPadding=0 cellSpacing=0 >
          <TBODY>
            <TR> 
              <TD    >  <img src="img/f_title_bg.gif" width="100%" /></TD>
            </TR>
            <TR> 
              <TD   valign="top" id=mySide  style="padding-top:2px;background-color:#E7F0F7"> 
     
                  <table width="100%" border="0">
                    <tr> 
                      <td><table width="100%" border="0">
                          <tr> 
                            <td > <div style="padding-left:30px;"> 
                                <table width="100%" border="0">
                                  <tr> 
                                    <td width="46%">收件人 TO: 
                                      <input name="txt_Fax_TO" type="text" id="txt_Fax_TO" />                                    </td>
                                    <td width="54%">标题 SUB: 
                                      <input name="txt_Fax_SUB" type="text" id="txt_Fax_SUB" /></td>
                                  </tr>
                                </table>
                              </div></td>
                          </tr>
                          <tr> 
                            <td><table width="100%"   border="0">
                                <tr> 
                                  <td width="74%"> <div style="padding-left:30px;">接收传真号码。分机号用逗号分隔（多个号码请换行）</div></td>
                                  <td width="26%">&nbsp;</td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr> 
                            <td > <div style="padding-left:5px;"> 
                                <textarea name="telNo" cols="70"  rows="5" id="telNo"></textarea>
                              </div></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td>&nbsp; </td>
                    </tr>
                    <tr> 
                      <td><table width="100%" border="0">
                          <tr> 
                            <td width="100%"><div style="padding-left:5px;"> 
                                <fieldset>
                                <legend>传真文件</legend>
                                <table width="100%" border="0">
                                  <tr> 
                                    <td height="21"><table width="100%" border="0">
                                        <tr> 
                                          <td >请选择传真文件：
                                            <input type="file" name="faxFile"/>&nbsp; </td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr> 
                                    <td>目前支持WORD文档、EXCEL文档、POWER POINT 
                                      文档、PDF文档、TIFF图片等</td>
                                  </tr>
                                </table>
                                </fieldset>
                            </div></td>
                            
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td > <table width="100%" border="0">
                          <tr> 
                            <td width="30%"  >&nbsp;</td>
                            <td width="70%"><input name="bnt_Fax_Send" type="submit" id="bnt_Fax_Send" value="发送传真"   style="width:100px; height:40px; font-size:18px; font-weight: bold "/></td>
                          </tr>
                      </table></td>
                    </tr>
                  </table>
				
                </div></TD>
            </TR>
			 
          </TBODY>
        </TABLE>	</TD>
	</TR>
     </form>  
</TABLE>

  </body>
  </html>
