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
	BORDER-RIGHT: #4F8DC1 1px solid;BORDER-LEFT: #4F8DC1 1px solid; BORDER-BOTTOM:#4F8DC1 1px solid;  border-top:#9ec9ec 1px;
	padding-top:20px
}
#menu .clearance{BORDER-BOTTOM: #9ec9ec 1px solid}
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
 
<script language="javascript"> 
  
function chck_Mode(obj)
{
  if (obj.value == 3)
  {
  	document.getElementById("fileSound").style.display="";
	document.getElementById("tre_Note_Content").disabled=true;
	 
  }else
  {
  
  	document.getElementById("tre_Note_Content").disabled=false;
  	document.getElementById("fileSound").style.display="none";	
  }
  
}
function IsDigit()
{ 
	return (event.keyCode >= 48) && (event.keyCode <= 57)
}
function PopIt(){
 
	m = document.getElementById("file_Sound").value;
	popup ="";
	m=document.getElementById("file_Sound").value 
	popup = window.open("","popDialog","height=450,width=385,scrollbars=yes,left=600,top=200") ;
	
	music="<embed src='"+m+"' autostart='true' loop='true' width='200' height='150' > "
	popup.document.write(music) ;
	popup.document.close();
 
 
}
function popHelp()
{ 
PopIt('��������', '');
 }
 
 
function chckForm1(obj)
{

	if (obj.telNo.value =="")
	{
		alert("���պ��벻��Ϊ��.");
		return false;
	}
  

 var temp=obj.file_Sound.value; 
	 
	  if (temp !="" )
	  {
		arr=temp.split("."); 
	 	ext=arr[arr.length-1]  ;
		 if (ext =="wav")
		{
			return true;
		}
		else
		{
		   alert("�����ļ���ʽ����ȷ.��ѡ��wav�ļ�") ;
			return false;
		}
	 
	  } 
	  else
	  {
	    	if (obj.tre_Note_Content.value =="")
			{
				alert("�������ݲ���Ϊ��.");
					return false;
			}
	  }
 
 
	
  return true;
}

</script>
</head>
<body class="body">
  
<TABLE  cellSpacing=0 cellPadding=0 width=650 align=center style="padding-left:30px"  border=0>
        <TBODY>
        <TR>
		  <td width="10">&nbsp;</td>
          <TD width="700" valign="top" style="padding-top:10px;"  >
		
            <TABLE width="100%" border=0 align="center" cellPadding=0 cellSpacing=0 id=menu>
          <TBODY>
            <TR> 
              <TD   ><img src="img/v_title_bg.gif" width="100%"/></TD>
            </TR>
            <TR> 
              <TD height="320" valign="top" id=mySide style="padding-top:2px;background-color:#E7F0F7">  
             
                    
                  <table width="99%" border="0" cellpadding="0" cellspacing="0">
				       <form name="sendForm"  method="post" onsubmit="return chckForm1(this)"  action="doVoiceSend.asp">
				 
                    <tr> 
                        <td><table width="100%" border="0">
                            <tr> 
                              <td><table width="100%" border="0">
                                  <tr> 
                                    <td height="20"> <div style="padding-left:20px;"><font color="#FF0000">���к��� 
                                        (��������� ���С�����+���룬�ֻ�����0)</font></div> </td>
                                  </tr>
                                </table></td>
                            </tr>
                            <tr> 
                              <td height="70" > <div style="padding-left:20px;"> 
                                  
                                <textarea name="telNo" cols="70" rows="6" id="telNo" ></textarea>
								     
                                </div></td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr> 
                        <td> <div style="padding-left:20px;"> �����ϳ�ģʽ: 
                            <input name="rbt_Sound_mode" type="radio" value="1" checked="checked"   onclick="chck_Mode(this)" />
                            ϵͳ�ϳ� 
                            <input type="radio" name="rbt_Sound_mode"  onclick="chck_Mode(this)" value="2" />
                            �ͷ��ϳ� 
                            <input name="rbt_Sound_mode" type="radio" onclick="chck_Mode(this)" value="3"  />
                            ¼���ļ� <span id="fileSound" style="display:none"> 
                            <input name="file_Sound" type="file" id="file_Sound" width="100" ></input>	
                            <input name="bnt_Sound_Audition" type="button"  id="bnt_Sound_Audition" onclick="javascript:popHelp()"  value="����"></input> 
                            </span></div> </td>
                      </tr>
                            <tr> 
                        <td height="10">&nbsp;</td>
                      </tr>
                      <tr > 
                        <td height="100%"> <table width="100%" border="0">
                            <tr> 
                              <td width="76%"> <div style="padding-left:20px;"> 
                                  <span >�������֣�ѡ�� ¼���ļ� ģʽʱ�����ա�����ַ�֧�֣�8000���ַ� </span> </div>                                 </td>
                              <td width="24%">&nbsp;</td>
                            </tr>
                          </table>
                          <div style="padding-left:20px;"> 
                            <textarea name="tre_Note_Content" cols="70" rows="4"  id="tre_Note_Content"  ></textarea>
                          </div> </td>
                      </tr>
                      <tr>    
                      <tr> 
                        <td><table width="100%" border="0">
                            <tr> 
                              <td width="70%"><div style="padding-left:30px;">����绰 
                                  
                                <input name="txt_Sound_phone" type="text" id="txt_Sound_phone" maxlength="60" />
                                  ���5��,����ã��ŷָ� </div></td>
                              <td width="30%"><input name="bnt_Sound_Send" type="submit" id="bnt_Sound_Send" value="��������"    style="width:100px; height:40px; font-size:18px; font-weight: bold "/></td>
                            </tr>
                          </table></td>
                      </tr>  </form>
                </table>                  </TD>
            </TR>
          </TBODY>
        </TABLE>	</TD>
	</TR>
    </TBODY>
</TABLE>

